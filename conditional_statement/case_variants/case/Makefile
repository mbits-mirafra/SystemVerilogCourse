all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv case.sv

simulate:
	vsim top -l case.sv.log -c -do "run -all;exit;"

clear:
	clear
