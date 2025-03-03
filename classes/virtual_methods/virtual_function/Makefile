all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv virtual_function.sv

simulate:
	vsim work.virtual_function -l virtual_function.log -c -do "run -all;exit;"

clear:
	clear
