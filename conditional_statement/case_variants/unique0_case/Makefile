all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv unique0_case.sv

simulate:
	vsim top -l unique0_case_op.log -c -do "run -all;exit;"

clear:
	clear
