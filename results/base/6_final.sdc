###############################################################################
# Created by write_sdc
###############################################################################
current_design sequence_detector_110
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 2.0000 [get_ports {clk_i}]
set_propagated_clock [get_clocks {core_clock}]
set_input_delay 0.4000 -clock [get_clocks {core_clock}] -add_delay [get_ports {reset_i}]
set_input_delay 0.4000 -clock [get_clocks {core_clock}] -add_delay [get_ports {seq_in}]
set_output_delay 0.4000 -clock [get_clocks {core_clock}] -add_delay [get_ports {detect}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
