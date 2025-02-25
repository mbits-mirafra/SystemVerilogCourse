all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv nested_for_loop.sv

simulate:
	vsim work.nested_for_loop -l nested_for_loop_log.log -c -do "run -all;exit;"

clear:
	clear
