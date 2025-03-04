all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv file_eof.sv

simulate:
	vsim file_eof -l file_eof.log -c -do "run -all;exit;"

clear:
	clear
