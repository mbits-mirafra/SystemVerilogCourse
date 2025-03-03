all:
	make clear;
	make compile;
	make simulate

compile:
	vlog -sv reduction_code.sv

simulate:
	vsim reduction_code -l reduction_code_output.log -c -do "run -all; exit;"

clear:
	clear
