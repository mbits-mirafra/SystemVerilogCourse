all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv random_function.sv

simulate:
	vsim ran_fun -l random_function_log.log -c -do "run -all; exit;"

clear:
	clear
