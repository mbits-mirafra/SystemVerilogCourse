all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv forever_loop.sv

simulate:
	vsim work.forever_loop -l forever_loop_log.log -c -do "run -all;exit;"

clear:
	clear
