all:
	make clear;
	make compile;
	make simulate

compile:
	vlog -sv conditional_code.sv

simulate:
	vsim conditional_code -l conditional_code_output.log -c -do "run -all; exit;"

clear:
	clear

