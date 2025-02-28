all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv randomization_mode_code.sv

simulate:
	vsim randomization_mode -l randomization_mode_code_output.log -c -do "run -all; exit;"

clear:
	clear
