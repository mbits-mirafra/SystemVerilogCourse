all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv dynamic_casting.sv

simulate:
	vsim casting -l dynamic_casting.log -c -do "run -all;exit;"

clear:
	clear
