all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv file_scanf.sv

simulate:
	vsim scanf -l file_scanf.log -c -do "run -all;exit;"

clear:
	clear
