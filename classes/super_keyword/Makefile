all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv super_keyword.sv

simulate:
	vsim work.super_keyword -l super_keyword.log -c -do "run -all;exit;"

clear:
	clear
