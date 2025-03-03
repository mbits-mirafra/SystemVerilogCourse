all:
	make clear;
	make compile;
	make simulate

compile:
	vlog -sv bitwise_code.sv

simulate:
	vsim bitwise_code -l bitwise_code_output.log -c -do "run -all; exit;"

clear:
	clear
