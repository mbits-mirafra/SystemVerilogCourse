all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv weighted_distribution.sv

simulate:
	vsim top -l weighted_distribution.log -c -do "run -all;exit;"

clear:
	clear
