all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv inheritance.sv

simulate:
	vsim work.inheritance -l inheritance.log -c -do "run -all;exit;"

clear:
	clear
