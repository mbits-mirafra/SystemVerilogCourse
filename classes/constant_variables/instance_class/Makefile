all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv instance_class.sv

simulate:
	vsim work.instance_class -l instance_class.log -c -do "run -all;exit;"

clear:
	clear
