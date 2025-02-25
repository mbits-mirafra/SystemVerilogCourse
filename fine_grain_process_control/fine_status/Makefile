all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv fine_status.sv

simulate:
	vsim work.fine_status -l fine_status.log -c -do "run -all;exit;"

clear:
	clear
