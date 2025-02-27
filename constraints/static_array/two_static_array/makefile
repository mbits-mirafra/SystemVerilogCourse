all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv two_dimensional_static_array.sv

simulate:
	vsim mod -l two_dimensional_static_array.log -c -do "run -all; exit;"

clear:
	clear
