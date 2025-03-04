all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv parameters_used_macros.sv

simulate:
	vsim tb -l parameters_used_macros.log -c -do "run -all;exit;"

clear:
	clear
