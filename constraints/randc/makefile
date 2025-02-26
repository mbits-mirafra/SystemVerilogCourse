all:
	make clear;
	make compile;
	make simulate;

compile:
	vlib work;
	vlog -sv randc_variable.sv

simulate:
	vsim randc_var -l randc_variable.log -c -do "run -all; exit;"

clear:
	clear
