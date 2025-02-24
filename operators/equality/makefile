all:
	make clear;
	make compile;
	make simulate

compile:
	vlog -sv equality_code.sv

simulate:
	vsim equality_code -l equality_code_output.log -c -do "run -all; exit;"

clear:
	clear
