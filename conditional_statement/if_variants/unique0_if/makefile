all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv unique0_if.sv

simulate:
	vsim unique0_if -l unique0_if.log -c -do "run -all; exit;"

clear:
	clear
