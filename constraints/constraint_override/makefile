all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv overrding_code.sv 

simulate:
	vsim top -l overrding_output.log -c -do "run -all; exit;"

clear:
	clear
