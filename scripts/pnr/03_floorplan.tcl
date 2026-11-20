#==============================================================
# ICC2 Floorplan Script
#==============================================================

source ../scripts/pnr/01_setup.tcl

#--------------------------------------------------------------
# Floorplan: 300 x 300 um die, 65% target core utilization
#--------------------------------------------------------------

initialize_floorplan \
  -control_type die \
  -side_length {300 300} \
  -core_utilization 0.65 \
  -core_offset {2}

#--------------------------------------------------------------
# (Optional debug: check available physical cells)
#--------------------------------------------------------------

# create_tap_cells -lib_cell saed32rvt_c/SHFILL1_RVT -distance 10

# create_tap_cells -lib_cell saed32rvt_c/DCAP_RVT -distance 12

# create_boundary_cells -left_boundary_cell saed32rvt_c/SHFILL3_RVT -right_boundary_cell saed32rvt_c/SHFILL3_RVT -top_boundary_cell saed32rvt_c/SHFILL3_RVT -bottom_boundary_cell saed32rvt_c/SHFILL3_RVT

# remove_cells [get_cells *tapfiller*]
# create_tap_cells -lib_cell saed32rvt_c/DCAP_RVT -distance 50

#--------------------------------------------------------------
# Pin constraints
#--------------------------------------------------------------

set_individual_pin_constraints \
    -ports [get_ports] \
    -sides {1 2 3 4}

#--------------------------------------------------------------
# Pin placement
#--------------------------------------------------------------

place_pins -self

#--------------------------------------------------------------
# Checks
#--------------------------------------------------------------
check_pin_placement \
    > $REPORTS_DIR/check_pin_placement_f.rpt
    
report_qor \
    > $REPORTS_DIR/report_qor_f.rpt
    
report_timing \
    > $REPORTS_DIR/report_timing_f.rpt
    
report_utilization \
    > $REPORTS_DIR/report_utilization_f.rpt
#--------------------------------------------------------------
# Save
#--------------------------------------------------------------
save_block -as picorv32_1
save_lib
puts "INFO: Floorplan completed successfully."
