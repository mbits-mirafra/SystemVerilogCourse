all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv func_automatic.sv

simulate:
	vsim work.func_automatic -l func_automatic_log.log -c -do "run -all;exit;"

clear:
	clear
