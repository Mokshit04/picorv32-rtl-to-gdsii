################################################################################
#
# Design name:  picorv32
#
# Created by icc2 write_sdc on Mon Jun 22 14:43:59 2026
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# picorv32_mapped.sdc, line 316
create_clock -name clk -period 5 -waveform {0 2.5} [get_ports {clk}]
set_propagated_clock [get_clocks {clk}]
set_load -pin_load 0.05 [get_ports {trap}]
set_load -pin_load 0.05 [get_ports {mem_valid}]
set_load -pin_load 0.05 [get_ports {mem_instr}]
set_load -pin_load 0.05 [get_ports {mem_addr[31]}]
set_load -pin_load 0.05 [get_ports {mem_addr[30]}]
set_load -pin_load 0.05 [get_ports {mem_addr[29]}]
set_load -pin_load 0.05 [get_ports {mem_addr[28]}]
set_load -pin_load 0.05 [get_ports {mem_addr[27]}]
set_load -pin_load 0.05 [get_ports {mem_addr[26]}]
set_load -pin_load 0.05 [get_ports {mem_addr[25]}]
set_load -pin_load 0.05 [get_ports {mem_addr[24]}]
set_load -pin_load 0.05 [get_ports {mem_addr[23]}]
set_load -pin_load 0.05 [get_ports {mem_addr[22]}]
set_load -pin_load 0.05 [get_ports {mem_addr[21]}]
set_load -pin_load 0.05 [get_ports {mem_addr[20]}]
set_load -pin_load 0.05 [get_ports {mem_addr[19]}]
set_load -pin_load 0.05 [get_ports {mem_addr[18]}]
set_load -pin_load 0.05 [get_ports {mem_addr[17]}]
set_load -pin_load 0.05 [get_ports {mem_addr[16]}]
set_load -pin_load 0.05 [get_ports {mem_addr[15]}]
set_load -pin_load 0.05 [get_ports {mem_addr[14]}]
set_load -pin_load 0.05 [get_ports {mem_addr[13]}]
set_load -pin_load 0.05 [get_ports {mem_addr[12]}]
set_load -pin_load 0.05 [get_ports {mem_addr[11]}]
set_load -pin_load 0.05 [get_ports {mem_addr[10]}]
set_load -pin_load 0.05 [get_ports {mem_addr[9]}]
set_load -pin_load 0.05 [get_ports {mem_addr[8]}]
set_load -pin_load 0.05 [get_ports {mem_addr[7]}]
set_load -pin_load 0.05 [get_ports {mem_addr[6]}]
set_load -pin_load 0.05 [get_ports {mem_addr[5]}]
set_load -pin_load 0.05 [get_ports {mem_addr[4]}]
set_load -pin_load 0.05 [get_ports {mem_addr[3]}]
set_load -pin_load 0.05 [get_ports {mem_addr[2]}]
set_load -pin_load 0.05 [get_ports {mem_addr[1]}]
set_load -pin_load 0.05 [get_ports {mem_addr[0]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[31]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[30]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[29]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[28]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[27]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[26]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[25]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[24]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[23]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[22]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[21]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[20]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[19]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[18]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[17]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[16]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[15]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[14]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[13]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[12]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[11]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[10]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[9]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[8]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[7]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[6]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[5]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[4]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[3]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[2]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[1]}]
set_load -pin_load 0.05 [get_ports {mem_wdata[0]}]
set_load -pin_load 0.05 [get_ports {mem_wstrb[3]}]
set_load -pin_load 0.05 [get_ports {mem_wstrb[2]}]
set_load -pin_load 0.05 [get_ports {mem_wstrb[1]}]
set_load -pin_load 0.05 [get_ports {mem_wstrb[0]}]
set_load -pin_load 0.05 [get_ports {mem_la_read}]
set_load -pin_load 0.05 [get_ports {mem_la_write}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[31]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[30]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[29]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[28]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[27]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[26]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[25]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[24]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[23]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[22]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[21]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[20]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[19]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[18]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[17]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[16]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[15]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[14]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[13]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[12]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[11]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[10]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[9]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[8]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[7]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[6]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[5]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[4]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[3]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[2]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[1]}]
set_load -pin_load 0.05 [get_ports {mem_la_addr[0]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[31]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[30]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[29]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[28]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[27]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[26]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[25]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[24]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[23]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[22]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[21]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[20]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[19]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[18]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[17]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[16]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[15]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[14]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[13]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[12]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[11]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[10]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[9]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[8]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[7]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[6]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[5]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[4]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[3]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[2]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[1]}]
set_load -pin_load 0.05 [get_ports {mem_la_wdata[0]}]
set_load -pin_load 0.05 [get_ports {mem_la_wstrb[3]}]
set_load -pin_load 0.05 [get_ports {mem_la_wstrb[2]}]
set_load -pin_load 0.05 [get_ports {mem_la_wstrb[1]}]
set_load -pin_load 0.05 [get_ports {mem_la_wstrb[0]}]
set_load -pin_load 0.05 [get_ports {pcpi_valid}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[31]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[30]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[29]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[28]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[27]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[26]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[25]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[24]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[23]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[22]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[21]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[20]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[19]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[18]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[17]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[16]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[15]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[14]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[13]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[12]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[11]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[10]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[9]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[8]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[7]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[6]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[5]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[4]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[3]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[2]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[1]}]
set_load -pin_load 0.05 [get_ports {pcpi_insn[0]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[31]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[30]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[29]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[28]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[27]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[26]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[25]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[24]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[23]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[22]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[21]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[20]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[19]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[18]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[17]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[16]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[15]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[14]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[13]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[12]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[11]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[10]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[9]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[8]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[7]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[6]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[5]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[4]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[3]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[2]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[1]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs1[0]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[31]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[30]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[29]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[28]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[27]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[26]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[25]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[24]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[23]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[22]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[21]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[20]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[19]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[18]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[17]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[16]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[15]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[14]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[13]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[12]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[11]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[10]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[9]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[8]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[7]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[6]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[5]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[4]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[3]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[2]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[1]}]
set_load -pin_load 0.05 [get_ports {pcpi_rs2[0]}]
set_load -pin_load 0.05 [get_ports {eoi[31]}]
set_load -pin_load 0.05 [get_ports {eoi[30]}]
set_load -pin_load 0.05 [get_ports {eoi[29]}]
set_load -pin_load 0.05 [get_ports {eoi[28]}]
set_load -pin_load 0.05 [get_ports {eoi[27]}]
set_load -pin_load 0.05 [get_ports {eoi[26]}]
set_load -pin_load 0.05 [get_ports {eoi[25]}]
set_load -pin_load 0.05 [get_ports {eoi[24]}]
set_load -pin_load 0.05 [get_ports {eoi[23]}]
set_load -pin_load 0.05 [get_ports {eoi[22]}]
set_load -pin_load 0.05 [get_ports {eoi[21]}]
set_load -pin_load 0.05 [get_ports {eoi[20]}]
set_load -pin_load 0.05 [get_ports {eoi[19]}]
set_load -pin_load 0.05 [get_ports {eoi[18]}]
set_load -pin_load 0.05 [get_ports {eoi[17]}]
set_load -pin_load 0.05 [get_ports {eoi[16]}]
set_load -pin_load 0.05 [get_ports {eoi[15]}]
set_load -pin_load 0.05 [get_ports {eoi[14]}]
set_load -pin_load 0.05 [get_ports {eoi[13]}]
set_load -pin_load 0.05 [get_ports {eoi[12]}]
set_load -pin_load 0.05 [get_ports {eoi[11]}]
set_load -pin_load 0.05 [get_ports {eoi[10]}]
set_load -pin_load 0.05 [get_ports {eoi[9]}]
set_load -pin_load 0.05 [get_ports {eoi[8]}]
set_load -pin_load 0.05 [get_ports {eoi[7]}]
set_load -pin_load 0.05 [get_ports {eoi[6]}]
set_load -pin_load 0.05 [get_ports {eoi[5]}]
set_load -pin_load 0.05 [get_ports {eoi[4]}]
set_load -pin_load 0.05 [get_ports {eoi[3]}]
set_load -pin_load 0.05 [get_ports {eoi[2]}]
set_load -pin_load 0.05 [get_ports {eoi[1]}]
set_load -pin_load 0.05 [get_ports {eoi[0]}]
set_load -pin_load 0.05 [get_ports {trace_valid}]
set_load -pin_load 0.05 [get_ports {trace_data[35]}]
set_load -pin_load 0.05 [get_ports {trace_data[34]}]
set_load -pin_load 0.05 [get_ports {trace_data[33]}]
set_load -pin_load 0.05 [get_ports {trace_data[32]}]
set_load -pin_load 0.05 [get_ports {trace_data[31]}]
set_load -pin_load 0.05 [get_ports {trace_data[30]}]
set_load -pin_load 0.05 [get_ports {trace_data[29]}]
set_load -pin_load 0.05 [get_ports {trace_data[28]}]
set_load -pin_load 0.05 [get_ports {trace_data[27]}]
set_load -pin_load 0.05 [get_ports {trace_data[26]}]
set_load -pin_load 0.05 [get_ports {trace_data[25]}]
set_load -pin_load 0.05 [get_ports {trace_data[24]}]
set_load -pin_load 0.05 [get_ports {trace_data[23]}]
set_load -pin_load 0.05 [get_ports {trace_data[22]}]
set_load -pin_load 0.05 [get_ports {trace_data[21]}]
set_load -pin_load 0.05 [get_ports {trace_data[20]}]
set_load -pin_load 0.05 [get_ports {trace_data[19]}]
set_load -pin_load 0.05 [get_ports {trace_data[18]}]
set_load -pin_load 0.05 [get_ports {trace_data[17]}]
set_load -pin_load 0.05 [get_ports {trace_data[16]}]
set_load -pin_load 0.05 [get_ports {trace_data[15]}]
set_load -pin_load 0.05 [get_ports {trace_data[14]}]
set_load -pin_load 0.05 [get_ports {trace_data[13]}]
set_load -pin_load 0.05 [get_ports {trace_data[12]}]
set_load -pin_load 0.05 [get_ports {trace_data[11]}]
set_load -pin_load 0.05 [get_ports {trace_data[10]}]
set_load -pin_load 0.05 [get_ports {trace_data[9]}]
set_load -pin_load 0.05 [get_ports {trace_data[8]}]
set_load -pin_load 0.05 [get_ports {trace_data[7]}]
set_load -pin_load 0.05 [get_ports {trace_data[6]}]
set_load -pin_load 0.05 [get_ports {trace_data[5]}]
set_load -pin_load 0.05 [get_ports {trace_data[4]}]
set_load -pin_load 0.05 [get_ports {trace_data[3]}]
set_load -pin_load 0.05 [get_ports {trace_data[2]}]
set_load -pin_load 0.05 [get_ports {trace_data[1]}]
set_load -pin_load 0.05 [get_ports {trace_data[0]}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 0.0789452 [get_clocks {clk}]
# -origin useful_skew
set_clock_latency -max 0.0970268 [get_clocks {clk}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clk}]
set_clock_uncertainty 0.25 [get_clocks {clk}]
set_clock_transition 0.25 [get_clocks {clk}]
# picorv32_mapped.sdc, line 322
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {resetn}]
# picorv32_mapped.sdc, line 423
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trap}]
# picorv32_mapped.sdc, line 424
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_valid}]
# picorv32_mapped.sdc, line 425
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_instr}]
# picorv32_mapped.sdc, line 323
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_ready}]
# picorv32_mapped.sdc, line 426
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[31]}]
# picorv32_mapped.sdc, line 427
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[30]}]
# picorv32_mapped.sdc, line 428
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[29]}]
# picorv32_mapped.sdc, line 429
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[28]}]
# picorv32_mapped.sdc, line 430
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[27]}]
# picorv32_mapped.sdc, line 431
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[26]}]
# picorv32_mapped.sdc, line 432
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[25]}]
# picorv32_mapped.sdc, line 433
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[24]}]
# picorv32_mapped.sdc, line 434
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[23]}]
# picorv32_mapped.sdc, line 435
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[22]}]
# picorv32_mapped.sdc, line 436
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[21]}]
# picorv32_mapped.sdc, line 437
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[20]}]
# picorv32_mapped.sdc, line 438
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[19]}]
# picorv32_mapped.sdc, line 439
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[18]}]
# picorv32_mapped.sdc, line 440
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[17]}]
# picorv32_mapped.sdc, line 441
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[16]}]
# picorv32_mapped.sdc, line 442
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[15]}]
# picorv32_mapped.sdc, line 443
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[14]}]
# picorv32_mapped.sdc, line 444
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[13]}]
# picorv32_mapped.sdc, line 445
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[12]}]
# picorv32_mapped.sdc, line 446
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[11]}]
# picorv32_mapped.sdc, line 447
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[10]}]
# picorv32_mapped.sdc, line 448
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[9]}]
# picorv32_mapped.sdc, line 449
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[8]}]
# picorv32_mapped.sdc, line 450
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[7]}]
# picorv32_mapped.sdc, line 451
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[6]}]
# picorv32_mapped.sdc, line 452
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[5]}]
# picorv32_mapped.sdc, line 453
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[4]}]
# picorv32_mapped.sdc, line 454
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[3]}]
# picorv32_mapped.sdc, line 455
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[2]}]
# picorv32_mapped.sdc, line 456
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[1]}]
# picorv32_mapped.sdc, line 457
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_addr[0]}]
# picorv32_mapped.sdc, line 458
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[31]}]
# picorv32_mapped.sdc, line 459
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[30]}]
# picorv32_mapped.sdc, line 460
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[29]}]
# picorv32_mapped.sdc, line 461
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[28]}]
# picorv32_mapped.sdc, line 462
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[27]}]
# picorv32_mapped.sdc, line 463
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[26]}]
# picorv32_mapped.sdc, line 464
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[25]}]
# picorv32_mapped.sdc, line 465
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[24]}]
# picorv32_mapped.sdc, line 466
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[23]}]
# picorv32_mapped.sdc, line 467
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[22]}]
# picorv32_mapped.sdc, line 468
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[21]}]
# picorv32_mapped.sdc, line 469
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[20]}]
# picorv32_mapped.sdc, line 470
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[19]}]
# picorv32_mapped.sdc, line 471
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[18]}]
# picorv32_mapped.sdc, line 472
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[17]}]
# picorv32_mapped.sdc, line 473
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[16]}]
# picorv32_mapped.sdc, line 474
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[15]}]
# picorv32_mapped.sdc, line 475
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[14]}]
# picorv32_mapped.sdc, line 476
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[13]}]
# picorv32_mapped.sdc, line 477
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[12]}]
# picorv32_mapped.sdc, line 478
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[11]}]
# picorv32_mapped.sdc, line 479
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[10]}]
# picorv32_mapped.sdc, line 480
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[9]}]
# picorv32_mapped.sdc, line 481
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[8]}]
# picorv32_mapped.sdc, line 482
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[7]}]
# picorv32_mapped.sdc, line 483
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[6]}]
# picorv32_mapped.sdc, line 484
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[5]}]
# picorv32_mapped.sdc, line 485
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[4]}]
# picorv32_mapped.sdc, line 486
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[3]}]
# picorv32_mapped.sdc, line 487
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[2]}]
# picorv32_mapped.sdc, line 488
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[1]}]
# picorv32_mapped.sdc, line 489
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wdata[0]}]
# picorv32_mapped.sdc, line 490
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wstrb[3]}]
# picorv32_mapped.sdc, line 491
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wstrb[2]}]
# picorv32_mapped.sdc, line 492
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wstrb[1]}]
# picorv32_mapped.sdc, line 493
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_wstrb[0]}]
# picorv32_mapped.sdc, line 324
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[31]}]
# picorv32_mapped.sdc, line 325
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[30]}]
# picorv32_mapped.sdc, line 326
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[29]}]
# picorv32_mapped.sdc, line 327
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[28]}]
# picorv32_mapped.sdc, line 328
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[27]}]
# picorv32_mapped.sdc, line 329
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[26]}]
# picorv32_mapped.sdc, line 330
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[25]}]
# picorv32_mapped.sdc, line 331
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[24]}]
# picorv32_mapped.sdc, line 332
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[23]}]
# picorv32_mapped.sdc, line 333
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[22]}]
# picorv32_mapped.sdc, line 334
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[21]}]
# picorv32_mapped.sdc, line 335
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[20]}]
# picorv32_mapped.sdc, line 336
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[19]}]
# picorv32_mapped.sdc, line 337
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[18]}]
# picorv32_mapped.sdc, line 338
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[17]}]
# picorv32_mapped.sdc, line 339
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[16]}]
# picorv32_mapped.sdc, line 340
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[15]}]
# picorv32_mapped.sdc, line 341
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[14]}]
# picorv32_mapped.sdc, line 342
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[13]}]
# picorv32_mapped.sdc, line 343
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[12]}]
# picorv32_mapped.sdc, line 344
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[11]}]
# picorv32_mapped.sdc, line 345
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[10]}]
# picorv32_mapped.sdc, line 346
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[9]}]
# picorv32_mapped.sdc, line 347
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[8]}]
# picorv32_mapped.sdc, line 348
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[7]}]
# picorv32_mapped.sdc, line 349
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[6]}]
# picorv32_mapped.sdc, line 350
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[5]}]
# picorv32_mapped.sdc, line 351
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[4]}]
# picorv32_mapped.sdc, line 352
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[3]}]
# picorv32_mapped.sdc, line 353
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[2]}]
# picorv32_mapped.sdc, line 354
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[1]}]
# picorv32_mapped.sdc, line 355
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_rdata[0]}]
# picorv32_mapped.sdc, line 494
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_read}]
# picorv32_mapped.sdc, line 495
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_write}]
# picorv32_mapped.sdc, line 496
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[31]}]
# picorv32_mapped.sdc, line 497
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[30]}]
# picorv32_mapped.sdc, line 498
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[29]}]
# picorv32_mapped.sdc, line 499
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[28]}]
# picorv32_mapped.sdc, line 500
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[27]}]
# picorv32_mapped.sdc, line 501
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[26]}]
# picorv32_mapped.sdc, line 502
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[25]}]
# picorv32_mapped.sdc, line 503
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[24]}]
# picorv32_mapped.sdc, line 504
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[23]}]
# picorv32_mapped.sdc, line 505
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[22]}]
# picorv32_mapped.sdc, line 506
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[21]}]
# picorv32_mapped.sdc, line 507
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[20]}]
# picorv32_mapped.sdc, line 508
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[19]}]
# picorv32_mapped.sdc, line 509
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[18]}]
# picorv32_mapped.sdc, line 510
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[17]}]
# picorv32_mapped.sdc, line 511
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[16]}]
# picorv32_mapped.sdc, line 512
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[15]}]
# picorv32_mapped.sdc, line 513
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[14]}]
# picorv32_mapped.sdc, line 514
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[13]}]
# picorv32_mapped.sdc, line 515
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[12]}]
# picorv32_mapped.sdc, line 516
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[11]}]
# picorv32_mapped.sdc, line 517
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[10]}]
# picorv32_mapped.sdc, line 518
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[9]}]
# picorv32_mapped.sdc, line 519
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[8]}]
# picorv32_mapped.sdc, line 520
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[7]}]
# picorv32_mapped.sdc, line 521
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[6]}]
# picorv32_mapped.sdc, line 522
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[5]}]
# picorv32_mapped.sdc, line 523
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[4]}]
# picorv32_mapped.sdc, line 524
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[3]}]
# picorv32_mapped.sdc, line 525
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[2]}]
# picorv32_mapped.sdc, line 526
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[1]}]
# picorv32_mapped.sdc, line 527
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_addr[0]}]
# picorv32_mapped.sdc, line 528
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[31]}]
# picorv32_mapped.sdc, line 529
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[30]}]
# picorv32_mapped.sdc, line 530
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[29]}]
# picorv32_mapped.sdc, line 531
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[28]}]
# picorv32_mapped.sdc, line 532
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[27]}]
# picorv32_mapped.sdc, line 533
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[26]}]
# picorv32_mapped.sdc, line 534
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[25]}]
# picorv32_mapped.sdc, line 535
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[24]}]
# picorv32_mapped.sdc, line 536
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[23]}]
# picorv32_mapped.sdc, line 537
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[22]}]
# picorv32_mapped.sdc, line 538
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[21]}]
# picorv32_mapped.sdc, line 539
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[20]}]
# picorv32_mapped.sdc, line 540
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[19]}]
# picorv32_mapped.sdc, line 541
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[18]}]
# picorv32_mapped.sdc, line 542
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[17]}]
# picorv32_mapped.sdc, line 543
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[16]}]
# picorv32_mapped.sdc, line 544
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[15]}]
# picorv32_mapped.sdc, line 545
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[14]}]
# picorv32_mapped.sdc, line 546
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[13]}]
# picorv32_mapped.sdc, line 547
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[12]}]
# picorv32_mapped.sdc, line 548
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[11]}]
# picorv32_mapped.sdc, line 549
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[10]}]
# picorv32_mapped.sdc, line 550
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[9]}]
# picorv32_mapped.sdc, line 551
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[8]}]
# picorv32_mapped.sdc, line 552
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[7]}]
# picorv32_mapped.sdc, line 553
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[6]}]
# picorv32_mapped.sdc, line 554
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[5]}]
# picorv32_mapped.sdc, line 555
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[4]}]
# picorv32_mapped.sdc, line 556
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[3]}]
# picorv32_mapped.sdc, line 557
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[2]}]
# picorv32_mapped.sdc, line 558
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[1]}]
# picorv32_mapped.sdc, line 559
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wdata[0]}]
# picorv32_mapped.sdc, line 560
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wstrb[3]}]
# picorv32_mapped.sdc, line 561
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wstrb[2]}]
# picorv32_mapped.sdc, line 562
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wstrb[1]}]
# picorv32_mapped.sdc, line 563
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {mem_la_wstrb[0]}]
# picorv32_mapped.sdc, line 564
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_valid}]
# picorv32_mapped.sdc, line 565
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[31]}]
# picorv32_mapped.sdc, line 566
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[30]}]
# picorv32_mapped.sdc, line 567
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[29]}]
# picorv32_mapped.sdc, line 568
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[28]}]
# picorv32_mapped.sdc, line 569
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[27]}]
# picorv32_mapped.sdc, line 570
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[26]}]
# picorv32_mapped.sdc, line 571
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[25]}]
# picorv32_mapped.sdc, line 572
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[24]}]
# picorv32_mapped.sdc, line 573
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[23]}]
# picorv32_mapped.sdc, line 574
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[22]}]
# picorv32_mapped.sdc, line 575
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[21]}]
# picorv32_mapped.sdc, line 576
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[20]}]
# picorv32_mapped.sdc, line 577
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[19]}]
# picorv32_mapped.sdc, line 578
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[18]}]
# picorv32_mapped.sdc, line 579
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[17]}]
# picorv32_mapped.sdc, line 580
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[16]}]
# picorv32_mapped.sdc, line 581
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[15]}]
# picorv32_mapped.sdc, line 582
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[14]}]
# picorv32_mapped.sdc, line 583
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[13]}]
# picorv32_mapped.sdc, line 584
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[12]}]
# picorv32_mapped.sdc, line 585
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[11]}]
# picorv32_mapped.sdc, line 586
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[10]}]
# picorv32_mapped.sdc, line 587
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[9]}]
# picorv32_mapped.sdc, line 588
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[8]}]
# picorv32_mapped.sdc, line 589
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[7]}]
# picorv32_mapped.sdc, line 590
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[6]}]
# picorv32_mapped.sdc, line 591
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[5]}]
# picorv32_mapped.sdc, line 592
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[4]}]
# picorv32_mapped.sdc, line 593
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[3]}]
# picorv32_mapped.sdc, line 594
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[2]}]
# picorv32_mapped.sdc, line 595
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[1]}]
# picorv32_mapped.sdc, line 596
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_insn[0]}]
# picorv32_mapped.sdc, line 597
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[31]}]
# picorv32_mapped.sdc, line 598
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[30]}]
# picorv32_mapped.sdc, line 599
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[29]}]
# picorv32_mapped.sdc, line 600
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[28]}]
# picorv32_mapped.sdc, line 601
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[27]}]
# picorv32_mapped.sdc, line 602
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[26]}]
# picorv32_mapped.sdc, line 603
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[25]}]
# picorv32_mapped.sdc, line 604
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[24]}]
# picorv32_mapped.sdc, line 605
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[23]}]
# picorv32_mapped.sdc, line 606
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[22]}]
# picorv32_mapped.sdc, line 607
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[21]}]
# picorv32_mapped.sdc, line 608
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[20]}]
# picorv32_mapped.sdc, line 609
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[19]}]
# picorv32_mapped.sdc, line 610
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[18]}]
# picorv32_mapped.sdc, line 611
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[17]}]
# picorv32_mapped.sdc, line 612
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[16]}]
# picorv32_mapped.sdc, line 613
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[15]}]
# picorv32_mapped.sdc, line 614
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[14]}]
# picorv32_mapped.sdc, line 615
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[13]}]
# picorv32_mapped.sdc, line 616
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[12]}]
# picorv32_mapped.sdc, line 617
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[11]}]
# picorv32_mapped.sdc, line 618
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[10]}]
# picorv32_mapped.sdc, line 619
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[9]}]
# picorv32_mapped.sdc, line 620
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[8]}]
# picorv32_mapped.sdc, line 621
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[7]}]
# picorv32_mapped.sdc, line 622
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[6]}]
# picorv32_mapped.sdc, line 623
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[5]}]
# picorv32_mapped.sdc, line 624
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[4]}]
# picorv32_mapped.sdc, line 625
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[3]}]
# picorv32_mapped.sdc, line 626
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[2]}]
# picorv32_mapped.sdc, line 627
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[1]}]
# picorv32_mapped.sdc, line 628
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs1[0]}]
# picorv32_mapped.sdc, line 629
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[31]}]
# picorv32_mapped.sdc, line 630
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[30]}]
# picorv32_mapped.sdc, line 631
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[29]}]
# picorv32_mapped.sdc, line 632
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[28]}]
# picorv32_mapped.sdc, line 633
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[27]}]
# picorv32_mapped.sdc, line 634
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[26]}]
# picorv32_mapped.sdc, line 635
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[25]}]
# picorv32_mapped.sdc, line 636
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[24]}]
# picorv32_mapped.sdc, line 637
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[23]}]
# picorv32_mapped.sdc, line 638
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[22]}]
# picorv32_mapped.sdc, line 639
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[21]}]
# picorv32_mapped.sdc, line 640
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[20]}]
# picorv32_mapped.sdc, line 641
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[19]}]
# picorv32_mapped.sdc, line 642
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[18]}]
# picorv32_mapped.sdc, line 643
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[17]}]
# picorv32_mapped.sdc, line 644
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[16]}]
# picorv32_mapped.sdc, line 645
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[15]}]
# picorv32_mapped.sdc, line 646
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[14]}]
# picorv32_mapped.sdc, line 647
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[13]}]
# picorv32_mapped.sdc, line 648
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[12]}]
# picorv32_mapped.sdc, line 649
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[11]}]
# picorv32_mapped.sdc, line 650
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[10]}]
# picorv32_mapped.sdc, line 651
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[9]}]
# picorv32_mapped.sdc, line 652
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[8]}]
# picorv32_mapped.sdc, line 653
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[7]}]
# picorv32_mapped.sdc, line 654
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[6]}]
# picorv32_mapped.sdc, line 655
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[5]}]
# picorv32_mapped.sdc, line 656
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[4]}]
# picorv32_mapped.sdc, line 657
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[3]}]
# picorv32_mapped.sdc, line 658
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[2]}]
# picorv32_mapped.sdc, line 659
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[1]}]
# picorv32_mapped.sdc, line 660
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rs2[0]}]
# picorv32_mapped.sdc, line 356
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_wr}]
# picorv32_mapped.sdc, line 357
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[31]}]
# picorv32_mapped.sdc, line 358
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[30]}]
# picorv32_mapped.sdc, line 359
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[29]}]
# picorv32_mapped.sdc, line 360
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[28]}]
# picorv32_mapped.sdc, line 361
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[27]}]
# picorv32_mapped.sdc, line 362
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[26]}]
# picorv32_mapped.sdc, line 363
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[25]}]
# picorv32_mapped.sdc, line 364
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[24]}]
# picorv32_mapped.sdc, line 365
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[23]}]
# picorv32_mapped.sdc, line 366
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[22]}]
# picorv32_mapped.sdc, line 367
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[21]}]
# picorv32_mapped.sdc, line 368
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[20]}]
# picorv32_mapped.sdc, line 369
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[19]}]
# picorv32_mapped.sdc, line 370
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[18]}]
# picorv32_mapped.sdc, line 371
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[17]}]
# picorv32_mapped.sdc, line 372
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[16]}]
# picorv32_mapped.sdc, line 373
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[15]}]
# picorv32_mapped.sdc, line 374
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[14]}]
# picorv32_mapped.sdc, line 375
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[13]}]
# picorv32_mapped.sdc, line 376
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[12]}]
# picorv32_mapped.sdc, line 377
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[11]}]
# picorv32_mapped.sdc, line 378
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[10]}]
# picorv32_mapped.sdc, line 379
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[9]}]
# picorv32_mapped.sdc, line 380
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[8]}]
# picorv32_mapped.sdc, line 381
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[7]}]
# picorv32_mapped.sdc, line 382
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[6]}]
# picorv32_mapped.sdc, line 383
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[5]}]
# picorv32_mapped.sdc, line 384
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[4]}]
# picorv32_mapped.sdc, line 385
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[3]}]
# picorv32_mapped.sdc, line 386
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[2]}]
# picorv32_mapped.sdc, line 387
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[1]}]
# picorv32_mapped.sdc, line 388
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_rd[0]}]
# picorv32_mapped.sdc, line 389
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_wait}]
# picorv32_mapped.sdc, line 390
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {pcpi_ready}]
# picorv32_mapped.sdc, line 391
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[31]}]
# picorv32_mapped.sdc, line 392
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[30]}]
# picorv32_mapped.sdc, line 393
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[29]}]
# picorv32_mapped.sdc, line 394
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[28]}]
# picorv32_mapped.sdc, line 395
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[27]}]
# picorv32_mapped.sdc, line 396
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[26]}]
# picorv32_mapped.sdc, line 397
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[25]}]
# picorv32_mapped.sdc, line 398
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[24]}]
# picorv32_mapped.sdc, line 399
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[23]}]
# picorv32_mapped.sdc, line 400
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[22]}]
# picorv32_mapped.sdc, line 401
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[21]}]
# picorv32_mapped.sdc, line 402
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[20]}]
# picorv32_mapped.sdc, line 403
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[19]}]
# picorv32_mapped.sdc, line 404
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[18]}]
# picorv32_mapped.sdc, line 405
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[17]}]
# picorv32_mapped.sdc, line 406
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[16]}]
# picorv32_mapped.sdc, line 407
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[15]}]
# picorv32_mapped.sdc, line 408
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[14]}]
# picorv32_mapped.sdc, line 409
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[13]}]
# picorv32_mapped.sdc, line 410
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[12]}]
# picorv32_mapped.sdc, line 411
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[11]}]
# picorv32_mapped.sdc, line 412
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[10]}]
# picorv32_mapped.sdc, line 413
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[9]}]
# picorv32_mapped.sdc, line 414
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[8]}]
# picorv32_mapped.sdc, line 415
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[7]}]
# picorv32_mapped.sdc, line 416
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[6]}]
# picorv32_mapped.sdc, line 417
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[5]}]
# picorv32_mapped.sdc, line 418
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[4]}]
# picorv32_mapped.sdc, line 419
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[3]}]
# picorv32_mapped.sdc, line 420
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[2]}]
# picorv32_mapped.sdc, line 421
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[1]}]
# picorv32_mapped.sdc, line 422
set_input_delay -clock [get_clocks {clk}] 0.5 [get_ports {irq[0]}]
# picorv32_mapped.sdc, line 661
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[31]}]
# picorv32_mapped.sdc, line 662
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[30]}]
# picorv32_mapped.sdc, line 663
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[29]}]
# picorv32_mapped.sdc, line 664
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[28]}]
# picorv32_mapped.sdc, line 665
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[27]}]
# picorv32_mapped.sdc, line 666
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[26]}]
# picorv32_mapped.sdc, line 667
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[25]}]
# picorv32_mapped.sdc, line 668
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[24]}]
# picorv32_mapped.sdc, line 669
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[23]}]
# picorv32_mapped.sdc, line 670
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[22]}]
# picorv32_mapped.sdc, line 671
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[21]}]
# picorv32_mapped.sdc, line 672
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[20]}]
# picorv32_mapped.sdc, line 673
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[19]}]
# picorv32_mapped.sdc, line 674
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[18]}]
# picorv32_mapped.sdc, line 675
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[17]}]
# picorv32_mapped.sdc, line 676
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[16]}]
# picorv32_mapped.sdc, line 677
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[15]}]
# picorv32_mapped.sdc, line 678
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[14]}]
# picorv32_mapped.sdc, line 679
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[13]}]
# picorv32_mapped.sdc, line 680
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[12]}]
# picorv32_mapped.sdc, line 681
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[11]}]
# picorv32_mapped.sdc, line 682
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[10]}]
# picorv32_mapped.sdc, line 683
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[9]}]
# picorv32_mapped.sdc, line 684
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[8]}]
# picorv32_mapped.sdc, line 685
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[7]}]
# picorv32_mapped.sdc, line 686
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[6]}]
# picorv32_mapped.sdc, line 687
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[5]}]
# picorv32_mapped.sdc, line 688
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[4]}]
# picorv32_mapped.sdc, line 689
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[3]}]
# picorv32_mapped.sdc, line 690
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[2]}]
# picorv32_mapped.sdc, line 691
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[1]}]
# picorv32_mapped.sdc, line 692
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {eoi[0]}]
# picorv32_mapped.sdc, line 693
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_valid}]
# picorv32_mapped.sdc, line 694
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[35]}]
# picorv32_mapped.sdc, line 695
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[34]}]
# picorv32_mapped.sdc, line 696
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[33]}]
# picorv32_mapped.sdc, line 697
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[32]}]
# picorv32_mapped.sdc, line 698
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[31]}]
# picorv32_mapped.sdc, line 699
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[30]}]
# picorv32_mapped.sdc, line 700
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[29]}]
# picorv32_mapped.sdc, line 701
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[28]}]
# picorv32_mapped.sdc, line 702
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[27]}]
# picorv32_mapped.sdc, line 703
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[26]}]
# picorv32_mapped.sdc, line 704
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[25]}]
# picorv32_mapped.sdc, line 705
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[24]}]
# picorv32_mapped.sdc, line 706
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[23]}]
# picorv32_mapped.sdc, line 707
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[22]}]
# picorv32_mapped.sdc, line 708
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[21]}]
# picorv32_mapped.sdc, line 709
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[20]}]
# picorv32_mapped.sdc, line 710
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[19]}]
# picorv32_mapped.sdc, line 711
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[18]}]
# picorv32_mapped.sdc, line 712
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[17]}]
# picorv32_mapped.sdc, line 713
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[16]}]
# picorv32_mapped.sdc, line 714
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[15]}]
# picorv32_mapped.sdc, line 715
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[14]}]
# picorv32_mapped.sdc, line 716
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[13]}]
# picorv32_mapped.sdc, line 717
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[12]}]
# picorv32_mapped.sdc, line 718
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[11]}]
# picorv32_mapped.sdc, line 719
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[10]}]
# picorv32_mapped.sdc, line 720
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[9]}]
# picorv32_mapped.sdc, line 721
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[8]}]
# picorv32_mapped.sdc, line 722
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[7]}]
# picorv32_mapped.sdc, line 723
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[6]}]
# picorv32_mapped.sdc, line 724
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[5]}]
# picorv32_mapped.sdc, line 725
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[4]}]
# picorv32_mapped.sdc, line 726
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[3]}]
# picorv32_mapped.sdc, line 727
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[2]}]
# picorv32_mapped.sdc, line 728
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[1]}]
# picorv32_mapped.sdc, line 729
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {trace_data[0]}]
