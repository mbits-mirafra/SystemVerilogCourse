all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv foreach_using_for.sv

simulate:
	vsim work.foreach_using_for -l foreach_using_for_log.log -c -do "run -all;exit;"

clear:
	clear
