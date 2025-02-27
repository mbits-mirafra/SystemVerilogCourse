all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv mult_dimensional_static_array.sv

simulate:
	vsim mod -l mult_dimensional_static_array.log -c -do "run -all; exit;"

clear:
	clear

