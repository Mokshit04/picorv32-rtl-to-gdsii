#==============================================================
# Synopsys Design Compiler - Logic Synthesis
# File   : dc_synth.tcl
# Design : picorv32
# Run    : cd work && dc_shell -f ../scripts/synthesis/dc_synth.tcl | tee synthesis.log
#==============================================================

#--------------------------------------------------------------
# Setup
#--------------------------------------------------------------
set DESIGN_NAME  "picorv32"
set PROJECT_ROOT ".."
set LIB_DIR      "$PROJECT_ROOT/ref/lib/stdcell_rvt"
set OUTPUT_DIR   "./outputs"
set REPORTS_DIR  "./reports/synthesis"

file mkdir $OUTPUT_DIR
file mkdir $REPORTS_DIR

# SAED32 RVT standard cells, slow-slow corner (0.7 V, -40 C)
set_app_var search_path    [list . $PROJECT_ROOT/rtl $LIB_DIR]
set_app_var target_library "$LIB_DIR/saed32rvt_ss0p7vn40c.db"
set_app_var link_library   "* $LIB_DIR/saed32rvt_ss0p7vn40c.db"

#--------------------------------------------------------------
# Read RTL
#--------------------------------------------------------------
analyze -format verilog $PROJECT_ROOT/rtl/picorv32.v
elaborate $DESIGN_NAME

current_design $DESIGN_NAME
link

#--------------------------------------------------------------
# Read constraints
#--------------------------------------------------------------
source $PROJECT_ROOT/constraints/picorv32.sdc

#--------------------------------------------------------------
# Design checks
#--------------------------------------------------------------
check_design
check_timing

#--------------------------------------------------------------
# Compile
#--------------------------------------------------------------
compile
compile_ultra

#--------------------------------------------------------------
# Reports
#--------------------------------------------------------------
report_area        > $REPORTS_DIR/area.rpt
report_power       > $REPORTS_DIR/power.rpt
report_timing      > $REPORTS_DIR/timing.rpt
report_qor         > $REPORTS_DIR/qor.rpt
report_constraints > $REPORTS_DIR/constraints.rpt

#--------------------------------------------------------------
# Outputs (inputs to ICC2)
#--------------------------------------------------------------
write_file -format verilog -hierarchy -output $OUTPUT_DIR/${DESIGN_NAME}_mapped.vg
write_sdc $OUTPUT_DIR/${DESIGN_NAME}_mapped.sdc

exit
