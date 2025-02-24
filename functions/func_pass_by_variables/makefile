all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv func_pass_by_variables.sv

simulate:
	vsim work.func_pass_by_variables -l func_pass_by_variables_log.log -c -do "run -all;exit;"

clear:
	clear
