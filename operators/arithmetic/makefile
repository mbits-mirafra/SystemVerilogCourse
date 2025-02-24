all:
	make clear;
	make compile;
	make simulate;

compile:
	vlib work;
	vlog -sv arithmetic_code.sv

simulate:
	vsim arithmetic_code -l arithmetic_code.log -c -do "run -all; exit;"

clear:
	clear
