all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv std_random_module.sv

simulate:
	vsim std_random_module -l std_random_module.log -c -do "run -all; exit;"

clear:
	clear
