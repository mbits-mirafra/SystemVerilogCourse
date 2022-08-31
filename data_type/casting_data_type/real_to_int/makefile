compile:
	vlib work;
	vlog -sv real_to_int.sv

simulate:
	vsim casting_real_int -l real_to_int.log -c -do "run -all; exit;"

all:
	make clear;
	make compile;
	make simulate;

clear:
	clear
