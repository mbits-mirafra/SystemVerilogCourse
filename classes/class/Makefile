all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv class.sv

simulate:
	vsim work.check_electricity -l class.log -c -do "run -all;exit;"

clear:
	clear
