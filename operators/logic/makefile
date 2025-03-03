all:
	make clear;
	make compile;
	make simulate

compile:
	vlog -sv logic_code.sv

simulate:
	vsim logic_code -l logic_code_output.log -c -do "run -all; exit;"
	
clear:
	clear

