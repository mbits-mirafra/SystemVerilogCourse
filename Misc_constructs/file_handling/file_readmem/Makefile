all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv file_readmem.sv

simulate:
	vsim readmem -l file_readmem.log -c -do "run -all;exit;"

clear:
	clear
