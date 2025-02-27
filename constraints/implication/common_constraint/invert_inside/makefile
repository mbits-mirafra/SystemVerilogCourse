all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv invert_inside.sv

simulate:
	vsim top -l invert_inside.log -c -do "run -all;exit;"

clear:
	clear
