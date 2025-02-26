all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv rand_variable.sv

simulate:
	vsim rand_var -l rand_variable.log -c -do "run -all; exit;"

clear:
	clear
