all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv protected.sv

simulate:
	vsim work.protected_variable -l protected.log -c -do "run -all;exit;"

clear:
	clear
