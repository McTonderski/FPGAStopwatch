SetActiveLib -work
comp -include "$dsn\src\sixteen_bit_counter.vhd" 
comp -include "$dsn\src\TestBench\sixteen_bit_counter_TB.vhd" 
asim +access +r TESTBENCH_FOR_sixteen_bit_counter 
wave 
wave -noreg CLR
wave -noreg CLK
wave -noreg Q1	 
wave -noreg Q2
wave -noreg Q3
wave -noreg Q4
run 102000.00 ns
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 
