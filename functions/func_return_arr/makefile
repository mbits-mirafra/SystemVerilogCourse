all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv func_return_arr.sv

simulate:
	vsim work.func_return_arr -l func_return_arr_log.log -c -do "run -all;exit;"

clear:
	clear
