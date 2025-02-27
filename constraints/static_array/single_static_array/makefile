all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv single_static_array.sv

simulate:
	vsim stat_array -l single_static_array.log -c -do "run -all; exit;"

clear:
	clear
