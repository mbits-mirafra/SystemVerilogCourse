all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv wait_@.sv

simulate:
	vsim wait_example -l wait_@.log -c -do "run -all;quit;"

clear:
	clear

