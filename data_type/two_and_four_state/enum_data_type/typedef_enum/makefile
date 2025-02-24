all:
	make clear;
	make compile;
	make simulate;

compile:
	vlib work;
	vlog -sv typedef_enum.sv
	
simulate:
	vsim typedef_enum -l typedef_enum.log -c -do "run -all; exit;"
		
clear:
	clear
