compile:
	vlib work;
	vlog -sv data_type_bit.sv

simulate:
	vsim data_type_bit -l data_type_bit.log -c -do "run -all; exit;"

all:
	make clear;
	make compile;
	make simulate;

clear:
	clear
