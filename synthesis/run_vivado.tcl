create_project -force Stopwatch {c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\synthesis} -part 7a15tcpg236-1
add_files -norecurse {C:/Users/macie/OneDrive/Desktop/vhdl/stopwatch/src/Encoder.vhd}
add_files -norecurse {C:/Users/macie/OneDrive/Desktop/vhdl/stopwatch/src/mux.vhd}
add_files -norecurse {C:/Users/macie/OneDrive/Desktop/vhdl/stopwatch/src/muxdivider.vhd}
add_files -norecurse {C:/Users/macie/OneDrive/Desktop/vhdl/stopwatch/src/stoper.vhd}
add_files -norecurse {C:/Users/macie/OneDrive/Desktop/vhdl/stopwatch/compile/four2one_mux.vhd}
add_files -norecurse {C:/Users/macie/OneDrive/Desktop/vhdl/stopwatch/compile/muxdivider.vhd}
add_files -norecurse {C:/Users/macie/OneDrive/Desktop/vhdl/stopwatch/compile/seg_decoder.vhd}
add_files -norecurse {C:/Users/macie/OneDrive/Desktop/vhdl/stopwatch/compile/sixteen_bit_counter.vhd}
add_files -norecurse {C:/Users/macie/OneDrive/Desktop/vhdl/stopwatch/compile/Stopwatch.vhd}
set_property top Stopwatch [current_fileset]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]

synth_design -top Stopwatch -flatten_hierarchy rebuilt -gated_clock_conversion off -fsm_extraction auto -bufg 12 -fanout_limit 10000 -shreg_min_size 3 -max_bram -1 -max_uram -1 -max_dsp -1 -max_bram_cascade_height -1 -max_uram_cascade_height -1 -cascade_dsp auto -directive default -resource_sharing auto -control_set_opt_threshold auto
report_utilization -file {Stopwatch_utilization_synth.rpt}
write_edf -force {Stopwatch.edn}
write_vhdl -force {Stopwatch.vhd}
write_xdc -force {Stopwatch.xdc}
write_checkpoint -force Stopwatch_synth.dcp
