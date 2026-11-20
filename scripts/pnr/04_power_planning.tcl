#==============================================================
# Synopsys IC Compiler II - Script 04: Power Planning
# File: 04_power_planning.tcl
#==============================================================

source ../scripts/pnr/01_setup.tcl

#--------------------------------------------------------------
# 4a. Create and connect power / ground nets
#--------------------------------------------------------------

create_net -power {VDD}
create_net -ground {VSS}

connect_pg_net -all_blocks -automatic

# Ring
create_pg_ring_pattern core_ring_pattern \
    -horizontal_layer M7 \
    -horizontal_width 0.4 \
    -horizontal_spacing 0.3 \
    -vertical_layer M8 \
    -vertical_width 0.4 \
    -vertical_spacing 0.3

set_pg_strategy core_power_ring \
    -core \
    -pattern {{name:core_ring_pattern} {nets:{VDD VSS}} {offset:{0 0}}}

compile_pg -strategies core_power_ring

# Mesh
create_pg_mesh_pattern mesh \
-layers {
{{vertical_layer:M6} {width:.34} {spacing:interleaving} {pitch:5} {offset:.5}}
{{horizontal_layer:M7} {width:.38} {spacing:interleaving} {pitch:5.2} {offset:.5}}
{{vertical_layer:M8} {width:.38} {spacing:interleaving} {pitch:5} {offset:.5}}
}

set_pg_strategy core_mesh \
    -core \
    -pattern {{pattern:mesh} {nets:{VDD VSS}}} \
    -extension {stop: innermost_ring}

compile_pg -strategies core_mesh

# Rails
create_pg_std_cell_conn_pattern std_cell_rail \
    -layers {M1} \
    -rail_width 0.06

set_pg_strategy rail_strat \
    -core \
    -pattern {{name:std_cell_rail} {nets:{VDD VSS}}}

compile_pg -strategies rail_strat
#--------------------------------------------------------------
# 4e. Connectivity check
#--------------------------------------------------------------


check_pg_connectivity \
    > $REPORTS_DIR/pg_connectivity_pp.rpt
    
check_pg_drc \
    > $REPORTS_DIR/check_pg_drc_pp.rpt
    
check_pg_missing_vias \
    > $REPORTS_DIR/missing_vias_pp.rpt
    
save_block -as picorv32_1_power
save_lib

puts "INFO: Power planning complete."
