all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv case_range.sv

simulate:
	vsim top -l case_range_op.log -c -do "run -all;exit;"

clear:
	clear
