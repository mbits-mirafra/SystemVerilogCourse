all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv class_assignment.sv

simulate:
	vsim work.assignment -l class_assignment.log -c -do "run -all;exit;"

clear:
	clear
