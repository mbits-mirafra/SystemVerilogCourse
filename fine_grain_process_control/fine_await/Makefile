all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv fine_await.sv

simulate:
	vsim work.fine_await -l fine_await.log -c -do "run -all;exit;"

clear:
	clear
