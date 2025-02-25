all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv unique_case2.sv

simulate:
	vsim top -l unique2_case_op.log -c -do "run -all;exit;"

clear:
	clear
