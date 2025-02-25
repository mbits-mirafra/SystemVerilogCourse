all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv func_default_value.sv

simulate:
	vsim work.func_default_value -l func_default_value_log.log -c -do "run -all;exit;"

clear:
	clear
