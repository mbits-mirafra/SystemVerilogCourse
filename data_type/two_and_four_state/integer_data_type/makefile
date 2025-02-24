all:
	make clear;make compile;make simulate;

compile:
	vlib work;
	vlog -sv data_type_integer.sv
	
simulate:
	vsim data_type_integer -l data_type_integer.log -c -do "run -all;quit;"
		
clear:
	clear
