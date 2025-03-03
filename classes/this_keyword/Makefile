all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv this_keyword.sv

simulate:
	vsim work.check_electricity -l this_keyword.log -c -do "run -all;exit;"

clear:
	clear
