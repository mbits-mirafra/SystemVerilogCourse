all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv public.sv

simulate:
	vsim work.public_variable -l public.log -c -do "run -all;exit;"

clear:
	clear
