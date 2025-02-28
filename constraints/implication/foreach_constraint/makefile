all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv foreach_constraint.sv

simulate:
	vsim top -l foreach_constraint.log -c -do "run -all;exit;"

clear:
	clear
