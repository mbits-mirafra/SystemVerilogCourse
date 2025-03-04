all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv file_get.sv

simulate:
	vsim f_get -l file_get.log -c -do "run -all;exit;"

clear:
	clear
