compile:
	vlib work;
	vlog -sv shortint_casting.sv

simulate:
	vsim casting_shortint -l shortint_casting.log -c -do "run -all; exit;"

all:
	make clear;
	make compile;
	make simulate;

clear:
	clear
