create_project -force Stopwatch {c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\implement} -part 7a15tcpg236-1
set_property design_mode GateLvl [current_fileset]
set_property top Stopwatch [current_fileset]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
add_files -norecurse {c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\synthesis\Stopwatch.edn}
read_xdc {c:\Users\macie\OneDrive\Desktop\vhdl\stopwatch\src\TutorVHDL.xdc}
link_design

opt_design -verbose -directive Default
write_checkpoint -force {Stopwatch_opt.dcp}
catch { report_drc -file {Stopwatch_opted.rpt} }

place_design -verbose -directive Default
catch { write_pcf -force {Stopwatch.pcf} }
write_checkpoint -force {Stopwatch_placed.dcp}
catch { report_io -file {Stopwatch_io_placed.rpt} }
catch { report_clock_utilization -file {Stopwatch_clock_utilization_placed.rpt} }
catch { report_utilization -file {Stopwatch_utilization_placed.rpt} }
catch { report_control_sets -verbose -file {Stopwatch_control_sets_placed.rpt} }
catch { report_timing_summary -file {Stopwatch_timing_summary_placed.rpt} }

power_opt_design -verbose
write_checkpoint -force {Stopwatch_postplace_pwropt.dcp}
catch { report_drc -file {Stopwatch_postplace_pwropted.rpt} }

route_design -verbose -directive Default
write_checkpoint -force {Stopwatch_routed.dcp}
write_verilog -mode timesim -sdf_anno false -force {Stopwatch.v}
write_sdf -mode timesim -force {Stopwatch.sdf}
catch { report_drc -file {Stopwatch_drc_routed.rpt} }
catch { report_power -file {Stopwatch_power_routed.rpt} }
catch { report_route_status -file {Stopwatch_route_status_routed.rpt} }
catch { report_timing_summary -file {Stopwatch_timing_summary_routed.rpt} }

write_bitstream -force -file {Stopwatch.bit}
