#==============================================================
# Synopsys IC Compiler II - Full PnR flow
# Run: cd work && icc2_shell -f ../scripts/pnr/run_pnr.tcl | tee icc2.log
#==============================================================

foreach step {
    02_netlist_read
    03_floorplan
    04_power_planning
    05_placement
    06_clock
    07_route
    08_signoff_outputs
} {
    puts "=================== Running $step ==================="
    source ../scripts/pnr/${step}.tcl
}
