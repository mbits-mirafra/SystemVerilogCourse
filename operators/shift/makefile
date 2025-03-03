all:
	make clear;
	make compile;
	make simulate

compile:
	vlog -sv shift_code.sv

simulate:
	vsim shift_code -l shift_code_output.log -c -do "run -all; exit;"

clear:
	clear

