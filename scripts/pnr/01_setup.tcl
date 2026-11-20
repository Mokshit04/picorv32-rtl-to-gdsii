#==============================================================
# Synopsys IC Compiler II - Script 01: Setup & Environment
# File: 01_setup.tcl
# Sourced by every other PnR script. Run all scripts from work/.
#==============================================================

set DESIGN_NAME   "picorv32"
set LIB_NAME      "picorv32_LIB"

# Input files (from Design Compiler)
set NETLIST_FILE  "./outputs/picorv32_mapped.vg"
set SDC_FILE      "./outputs/picorv32_mapped.sdc"

# PDK / library paths (SAED32 - not included in this repository)
set PDK_PATH      "../ref"
set LIB_DIR       "$PDK_PATH/lib/stdcell_rvt"
set TECH_DIR      "$PDK_PATH/tech"

# Output directories
set OUTPUT_DIR    "./outputs"
set REPORTS_DIR   "./reports/pnr"

file mkdir $OUTPUT_DIR
file mkdir $REPORTS_DIR
puts "INFO: Setup complete for design: $DESIGN_NAME"
