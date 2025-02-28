all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv inline_constraint.sv 

simulate:
	vsim inline_constraint -l inline_constraint_log.log -c -do "run -all;exit;"

clear:
	clear
