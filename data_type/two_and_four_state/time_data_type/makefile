compile:
	vlib work;
	vlog -sv data_type_time.sv
	
simulate:
	vsim data_type_time -l data_type_time.log -c -do "run -all; exit;"
	
all:
	make clear;
	make compile;
	make simulate;
	
clear:
	   clear
