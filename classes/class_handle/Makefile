all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv handle.sv

simulate:
	vsim work.tb -l handle.log -c -do "run -all;exit;"

clear:
	clear
