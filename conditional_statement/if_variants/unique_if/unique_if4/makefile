all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv unique_if4.sv

simulate:
	vsim unique_if4 -l unique_if4_log.log -c -do "run -all; exit;"

clear:
	clear
