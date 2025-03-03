all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv pure_virtual_function.sv

simulate:
	vsim work.pure_virtual_function -l pure_virtual_function.log -c -do "run -all;exit;"

clear:
	clear
