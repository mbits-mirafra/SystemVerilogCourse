all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv bidirectional_const.sv

simulate:
	vsim top -l bidirectional_const.log -c -do "run -all;exit;"

clear:
	clear
