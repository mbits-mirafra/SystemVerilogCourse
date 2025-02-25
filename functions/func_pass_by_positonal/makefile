all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv func_pass_by_positional.sv

simulate:
	vsim work.func_pass_by_positional -l func_pass_by_positional_log.log -c -do "run -all;exit;"

clear:
	clear
