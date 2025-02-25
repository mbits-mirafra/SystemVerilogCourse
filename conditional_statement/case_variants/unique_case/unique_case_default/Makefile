all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv unique_case_default.sv

simulate:
	vsim top -l unique_case_default_op.log -c -do "run -all;exit;"

clear:
	clear
