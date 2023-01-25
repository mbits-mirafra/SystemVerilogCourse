compile:
	vlib work;
	vlog -sv default_value_enum.sv
	
simulate:
	vsim default_value_enum -l default_value_enum.log -c -do "run -all; exit;"
	
all:
	make clear;
	make compile;
	make simulate;
	
clear:
	clear
