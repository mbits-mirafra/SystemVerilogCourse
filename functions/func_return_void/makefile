all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv func_return_void.sv

simulate:
	vsim work.func_return_void -l func_return_void_log.log -c -do "run -all;exit;"

clear:
	clear
