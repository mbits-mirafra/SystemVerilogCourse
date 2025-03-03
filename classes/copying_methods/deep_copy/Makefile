all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv deep_copy.sv

simulate:
	vsim work.deep -l deep_copy.log -c -do "run -all;exit;"

clear:
	clear
