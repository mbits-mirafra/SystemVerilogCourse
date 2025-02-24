all:
	make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv associative_methods.sv

simulate:
	vsim associative_method -l associative_mthod.log -c -do "run -all;quit;"

clear:
	clear

