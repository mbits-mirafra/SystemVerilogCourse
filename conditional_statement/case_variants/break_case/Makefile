all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv break_case.sv

simulate:
	vsim top -l break_case.log -c -do "run -all;exit;"

clear:
	clear
