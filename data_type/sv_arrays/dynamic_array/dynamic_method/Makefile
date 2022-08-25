compile:
	vlib work;
	vlog -sv methods.sv

simulate:
	vsim methods_dynamic -l methods_dynamic.log -c -do "run -all;quit;"

all:
	make clear;make compile;make simulate

clear:
	clear

