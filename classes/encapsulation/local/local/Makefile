all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv local.sv

simulate:
	vsim work.local_variable -l local.log -c -do "run -all;exit;"

clear:
	clear
