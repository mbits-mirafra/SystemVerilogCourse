all:
	make clear;
	make compile;
	make simulate

compile:
	vlib work;
	vlog -sv concatenation_code.sv

simulate:
	vsim concatenation_code -l concatenation_code_output.log -c -do "run -all; exit;"

clear:
	clear

