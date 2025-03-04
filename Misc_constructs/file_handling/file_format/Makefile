all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv file_format.sv

simulate:
	vsim format -l file_format.log -c -do "run -all;exit;"

clear:
	clear
