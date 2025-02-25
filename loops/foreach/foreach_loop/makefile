all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv foreach_loop.sv

simulate:
	vsim work.foreach_loop -l foreach_loop_log.log -c -do "run -all;exit;"

clear:
	clear
