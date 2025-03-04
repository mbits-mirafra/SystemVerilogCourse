all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv macros_commandline.sv

simulate:
	vsim tb -l macros_commandline.log -c -do "run -all;exit;"

clear:
	clear
