all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv func_pass_by_val.sv

simulate:
	vsim work.func_pass_by_val -l func_pass_by_val_log.log -c -do "run -all;exit;"

clear:
	clear
