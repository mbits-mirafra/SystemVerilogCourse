compile:
	vlib work;
	vlog -sv data_type_real.sv
	
simulate:
	vsim data_type_real -l data_type_real.log -c -do "run -all; exit;"
	
all:
	make clear;
	make compile;
	make simulate;
	
clear:
	   clear
