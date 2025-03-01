all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv object.sv

simulate:
	vsim work.tb -l object.log -c -do "run -all;exit;"

clear:
	clear
