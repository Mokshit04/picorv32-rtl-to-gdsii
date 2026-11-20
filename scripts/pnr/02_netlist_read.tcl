#==============================================================
# Synopsys IC Compiler II - Script 02: Library & Netlist Read
# File: 02_netlist_read.tcl
#==============================================================

source ../scripts/pnr/01_setup.tcl

#--------------------------------------------------------------
# 2a. Create the in-memory library and attach the NDM reference
#--------------------------------------------------------------
create_lib \
    -technology $PDK_PATH/tech/milkyway/saed32nm_1p9m_mw.tf \
    -ref_lib $PDK_PATH/lib/ndm/saed32rvt_c.ndm \
    $LIB_NAME
#--------------------------------------------------------------
# 2b. Read the synthesised gate-level netlist
#--------------------------------------------------------------

read_verilog $NETLIST_FILE \
    -library $LIB_NAME \
    -design  $DESIGN_NAME  \
    -top     $DESIGN_NAME

#--------------------------------------------------------------
# 2c. Link and constrain the design
#--------------------------------------------------------------

link_block

read_sdc $SDC_FILE

save_block
save_lib

puts "INFO: Netlist read and design linked successfully."
# start_gui    ;# uncomment to inspect the design in the GUI
