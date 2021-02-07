SetActiveLib -work
comp -include "$dsn\src\stoper.vhd" 
comp -include "$dsn\src\TestBench\stopwatch_tb.vhd" 
asim +access +r TESTBENCH_FOR_stopwatch
wave 
wave -noreg start_stop
wave -noreg clk_in
wave -noreg reset	 
wave -noreg DISP0
wave -noreg AN
wave -noreg dp
run 10020.00 ns
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 