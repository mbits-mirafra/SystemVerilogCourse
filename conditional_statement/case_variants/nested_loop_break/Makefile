all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv nested_loop.sv

simulate:
	vsim nested_loop -l nested_loop_op.log -c -do "run -all; exit;"

clear:
	clear
