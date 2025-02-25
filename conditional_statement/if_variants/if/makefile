all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv if_code.sv

simulate:
	vsim if_code -l if_code_log.log -c -do "run -all; exit;"

clear:
	clear

