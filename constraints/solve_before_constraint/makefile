all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv solve_before.sv 

simulate:
	vsim solve_before -l solve_before.log -c -do "run -all;exit;"

clear:
	clear
