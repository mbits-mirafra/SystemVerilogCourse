compile:
	vlib work;
	vlog -sv int_to_longint.sv

simulate:
	vsim casting_int -l int_to_longint.log -c -do "run -all; exit;"

all:
	make clear;
	make compile;
	make simulate;

clear:
	clear
