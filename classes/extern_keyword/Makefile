all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv extern_keyword.sv

simulate:
	vsim work.extern_keyword -l extern_keyword.log -c -do "run -all;exit;"

clear:
	clear
