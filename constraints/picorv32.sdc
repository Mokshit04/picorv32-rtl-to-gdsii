#==============================================================
# PicoRV32 - Timing Constraints
# Target clock: 200 MHz (period = 5.0 ns)
#==============================================================

# Clock definition
create_clock -name clk -period 5.0 [get_ports clk]

# Clock uncertainty (jitter + skew margin)
set_clock_uncertainty 0.25 [get_clocks clk]

# Clock transition
set_clock_transition 0.25 [get_clocks clk]

# Input delay (all inputs except the clock)
set_input_delay 0.5 -clock clk \
    [remove_from_collection [all_inputs] [get_ports clk]]

# Output delay
set_output_delay 0.5 -clock clk \
    [all_outputs]

# Driving cell for inputs
set_driving_cell -lib_cell BUFX2 \
    [remove_from_collection [all_inputs] [get_ports clk]]

# Output load (pF)
set_load 0.05 [all_outputs]
