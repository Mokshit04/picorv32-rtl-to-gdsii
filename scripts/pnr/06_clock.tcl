#==============================================================
# Synopsys IC Compiler II - Script 06: Clock
# File: 06_clock.tcl
#==============================================================

source ../scripts/pnr/01_setup.tcl

check_design -checks pre_clock_tree_stage

#--------------------------------------------------------------
# 6a. CLOCK TREE SYNTHESIS (CTS)
#--------------------------------------------------------------

synthesize_clock_tree

set_app_options -name cts.optimize.enable_local_skew -value true
set_app_options -name cts.compile.enable_local_skew -value true
set_app_options -name cts.compile.enable_global_route -value false
set_app_options -name clock_opt.flow.enable_ccd -value true

clock_opt -to build_clock

clock_opt -from route_clock -to route_clock

clock_opt

#--------------------------------------------------------------
# 6e. Reports
#--------------------------------------------------------------

report_clock_qor > $REPORTS_DIR/clock_qor_clk.rpt

report_clock_settings > $REPORTS_DIR/clock_settings_clk.rpt

report_timing -delay max -max_paths 10 > $REPORTS_DIR/timing_post_cts.rpt

report_timing -delay min -max_paths 10 > $REPORTS_DIR/timing_hold_post_cts.rpt

report_utilization > $REPORTS_DIR/utilization_cts.rpt

report_clock_skew_groups > $REPORTS_DIR/skew_groups_cts.rpt

report_clock > $REPORTS_DIR/report_clk_cts.rpt

save_block -as picorv32_placement_cts_1
save_lib

puts "INFO: Clock tree synthesis complete."
