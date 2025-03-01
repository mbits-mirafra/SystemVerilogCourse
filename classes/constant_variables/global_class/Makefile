all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv global_class.sv

simulate:
	vsim work.global_class -l global_class.log -c -do "run -all;exit;"

clear:
	clear
