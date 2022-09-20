compile:
	vlib work;
	vlog -sv set_value_enum.sv
	
simulate:
	vsim set_value_enum -l set_value_enum.log -c -do "run -all; exit;"
	
all:
	make clear;
	make compile;
	make simulate;
	
clear:
	clear
