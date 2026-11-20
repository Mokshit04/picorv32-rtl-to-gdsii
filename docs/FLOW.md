# Flow Walkthrough

This page explains what each stage of the flow does, the key settings, and which reports to check. All numbers come from the reports in [`../results/`](../results/).

---

## 0. Synthesis: Design Compiler

**Script:** [`scripts/synthesis/dc_synth.tcl`](../scripts/synthesis/dc_synth.tcl)

Synthesis converts the Verilog RTL into a netlist of real standard cells from the SAED32 RVT library.

- **Library:** `saed32rvt_ss0p7vn40c.db`, the slow-slow corner (0.7 V, −40 °C), so timing is checked against the worst case.
- **Constraints:** a 200 MHz clock (5.0 ns) with 0.25 ns uncertainty, 0.5 ns input and output delays, a BUFX2 driving cell and a 0.05 pF output load ([`constraints/picorv32.sdc`](../constraints/picorv32.sdc)).
- **Optimization:** `compile` followed by `compile_ultra`.

**Result:** 9,254 cells (1,644 flip-flops) and 29,224 µm² of cell area.

**Reports:** [`results/synthesis/reports/`](../results/synthesis/reports/)

---

## 1–2. Setup and netlist read: IC Compiler II

**Scripts:** [`01_setup.tcl`](../scripts/pnr/01_setup.tcl), [`02_netlist_read.tcl`](../scripts/pnr/02_netlist_read.tcl)

This stage creates an NDM design library from the SAED32 technology file and cell library. It then reads the mapped netlist, links it, and applies the synthesis SDC.

---

## 3. Floorplan

**Script:** [`03_floorplan.tcl`](../scripts/pnr/03_floorplan.tcl)

| Setting | Value |
|---|---|
| Die size | 300 × 300 µm |
| Target core utilization | 65% |
| Core offset | 2 µm |
| I/O pins | Spread over all 4 sides with `place_pins -self` |

**Why these values:** the first attempt over-filled the core (106.6% utilization) and placement failed. A larger die with a 65% target leaves room for buffers and timing fixes.

**Reports:** [`results/pnr/01_floorplan/`](../results/pnr/01_floorplan/)

---

## 4. Power planning

**Script:** [`04_power_planning.tcl`](../scripts/pnr/04_power_planning.tcl)

| Structure | Layers | Width | Notes |
|---|---|---|---|
| Core ring | M7 (H), M8 (V) | 0.4 µm | 0.3 µm spacing, VDD + VSS |
| Power mesh | M6 (V), M7 (H), M8 (V) | 0.34–0.38 µm | Interleaved, ~5 µm pitch |
| Cell rails | M1 | 0.06 µm | Follow the standard-cell rows |

**Checks:** power-grid DRC found no errors, and no vias were missing on VDD or VSS.

**Reports:** [`results/pnr/02_powerplan/`](../results/pnr/02_powerplan/)

---

## 5. Placement

**Script:** [`05_placement.tcl`](../scripts/pnr/05_placement.tcl)

1. Create the `func` mode, the `nom` corner and the `func::nom` scenario.
2. Load parasitic models: Cmax TLU+ for late (setup) analysis and Cmin TLU+ for early (hold) analysis.
3. Run `place_opt`, which places cells, then optimizes timing and congestion.
4. Run `legalize_placement`, which snaps every cell onto a legal site in a row.

**Reports:** legality, timing, QoR, congestion and utilization in [`results/pnr/03_placement/`](../results/pnr/03_placement/)

---

## 6. Clock tree synthesis

**Script:** [`06_clock.tcl`](../scripts/pnr/06_clock.tcl)

- Uses `synthesize_clock_tree`, then `clock_opt` (build clock → route clock → final optimization).
- Turns on local-skew optimization and **concurrent clock and data (CCD)** optimization.

| Metric | Value |
|---|---|
| Sinks | 1,576 |
| Levels | 5 |
| Repeaters | 38 (150 µm²) |
| Max latency | 0.11 ns |
| Global skew | 0.02 ns |
| Clock wire length | 8,328 µm |

**Reports:** [`results/pnr/04_cts/`](../results/pnr/04_cts/)

---

## 7. Routing

**Script:** [`07_route.tcl`](../scripts/pnr/07_route.tcl)

- Runs timing-driven global routing, track assignment and detail routing.
- Fixes antenna violations by inserting `ANTENNA_RVT` diodes.
- Finishes with `route_opt` for post-route timing optimization.

| Metric | Value |
|---|---|
| Setup WNS | +3.37 ns |
| Hold WNS / TNS | −0.00 / −0.01 ns (6 paths) |
| Utilization | 70.3% |
| Open nets | 0 of 12,946 |
| Routing DRCs | 0 |

**Reports:** [`results/pnr/05_route/`](../results/pnr/05_route/). The routed netlist is in [`results/pnr/netlist/`](../results/pnr/netlist/).

---

## 8. Signoff export

**Script:** [`08_signoff_outputs.tcl`](../scripts/pnr/08_signoff_outputs.tcl)

This stage writes the final timing, power, QoR and congestion reports. It then exports:

- `picorv32.gds`: the GDSII layout
- `picorv32_final.def`: placement and routing in DEF
- `picorv32_final.spef`: extracted parasitics for PrimeTime
- `picorv32_final.v` and `picorv32_final.sdc`: the final netlist and constraints

The GDSII, DEF and SPEF files embed SAED32 library data, so they are not committed to this repository.
