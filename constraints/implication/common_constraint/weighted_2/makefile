all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv weighted_distribution2.sv

simulate:
	vsim top -l weighted_distribution2.log -c -do "run -all;exit;"

clear:
	clear
