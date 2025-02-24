all:
	make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv methods.sv

simulate:
	vsim methods_dynamic -l methods_dynamic.log -c -do "run -all;quit;"

clear:
	clear

