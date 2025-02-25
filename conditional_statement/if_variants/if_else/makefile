all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv if_else.sv

simulate:
	vsim if_else -l if_else_log.log -c -do "run -all; exit;"

clear:
	clear
		
