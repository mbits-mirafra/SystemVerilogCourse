all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv local_error.sv

simulate:
	vsim work.local_error -l local_error.log -c -do "run -all;exit;"

clear:
	clear
