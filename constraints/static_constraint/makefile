all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv static_constraint.sv 

simulate:
	vsim static_constraint -l static_constraint_log.log -c -do "run -all;exit;"

clear:
	clear
