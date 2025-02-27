all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv up_counter.sv test.sv interface.sv top.sv

simulate:
	vsim top -l interface.log -c -do "run -all;exit;"

clear:
	clear
