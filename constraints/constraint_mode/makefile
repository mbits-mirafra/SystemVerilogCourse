all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv constraint_mode_code.sv

simulate:
	vsim constraint_mode -l constraint_mode_code_output.log -c -do "run -all; exit;"

clear:
	clear
