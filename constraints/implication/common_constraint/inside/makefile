all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv inside_const.sv

simulate:
	vsim top -l inside_const.log -c -do "run -all;exit;"

clear:
	clear
