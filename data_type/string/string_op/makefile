all:
	make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv string_op.sv

simulate:
	vsim string_o -l string_op.log -c -do "run -all;quit;"

clear:
	clear
