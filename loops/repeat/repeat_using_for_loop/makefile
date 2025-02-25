all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv repeat_for.sv

simulate:
	vsim work.repeat_for -l repeat_for_log.log -c -do "run -all;exit;"

clear:
	clear
