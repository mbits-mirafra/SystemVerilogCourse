all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv unique_if1.sv

simulate:
	vsim unique_if1 -l unique_if1_log.log -c -do "run -all; exit;"
	
clear:
	clear

