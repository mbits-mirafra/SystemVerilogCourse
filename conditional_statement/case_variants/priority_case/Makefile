all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv priority_case.sv

simulate:
	vsim top -l priority_case_op.log -c -do "run -all;exit;"

clear:
	clear
