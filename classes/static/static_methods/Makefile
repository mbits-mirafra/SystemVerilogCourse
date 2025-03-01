all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv static_method.sv

simulate:
	vsim work.static_method -l static_method.log -c -do "run -all;exit;"

clear:
	clear
