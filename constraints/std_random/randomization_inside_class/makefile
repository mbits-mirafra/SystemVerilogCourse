all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv std_random_class.sv

simulate:
	vsim tb -l std_random_class.log -c -do "run -all; exit;"

clear:
	clear
