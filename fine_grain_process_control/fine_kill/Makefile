all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv fine_kill.sv

simulate:
	vsim work.fine_kill -l fine_kill.log -c -do "run -all;exit;"

clear:
	clear
