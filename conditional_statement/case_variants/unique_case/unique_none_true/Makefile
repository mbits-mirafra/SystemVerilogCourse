all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv unique_case.sv

simulate:
	vsim top -l unique_case_op.log -c -do "run -all;exit;"

clear:
	clear
