all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv implication_constraint.sv

simulate:
	vsim top -l implication_constraint.log -c -do "run -all;exit;"

clear:
	clear
