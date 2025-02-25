all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv unique_if2.sv

simulate:
	vsim unique_if2 -l unique_if2_log.log -c -do "run -all; exit;"

clear:
	clear
