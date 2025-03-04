all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv macros_used_parameters.sv

simulate:
	vsim tb -l macros_used_parameters.log -c -do "run -all;exit;"

clear:
	clear
