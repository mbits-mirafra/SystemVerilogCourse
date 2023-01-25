all:
	make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv string_method.sv

simulate:
	vsim string_m -l string_method.log -c -do "run -all;quit;"

clear:
	clear

