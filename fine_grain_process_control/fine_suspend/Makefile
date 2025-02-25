all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv fine_suspend.sv

simulate:
	vsim work.fine_suspend -l fine_suspend.log -c -do "run -all;exit;"

clear:
	clear
