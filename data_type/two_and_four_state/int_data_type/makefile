compile:
	vlib work;
	vlog -sv data_type_int.sv
	
simulate:
	vsim data_type_int -l data_type_int.log -c -do "run -all; exit;"
	
all:
	make clear;
	make compile;
	make simulate;
	
clear:
	   clear
