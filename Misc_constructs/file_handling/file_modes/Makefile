all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv file_modes.sv

simulate:
	vsim file_modes -l file_modes.log -c -do "run -all;exit;"

clear:
	clear
