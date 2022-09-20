compile:
	vlib work;
	vlog -sv data_type_longint.sv
	
simulate:
	vsim data_type_longint -l data_type_longint.log -c -do "run -all; exit;"
	
all:
	make clear;
	make compile;
	make simulate;
	
clear:
	clear
