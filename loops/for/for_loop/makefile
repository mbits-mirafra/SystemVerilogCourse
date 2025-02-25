all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv for_loop.sv

simulate:
	vsim work.for_loop -l for_loop_log.log -c -do "run -all;exit;"

clear:
	clear
