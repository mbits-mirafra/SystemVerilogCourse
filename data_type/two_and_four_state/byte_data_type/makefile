compile:
	vlib work;
	vlog -sv data_type_byte.sv

simulate:
	vsim data_type_byte -l data_type_byte.log -c -do "run -all; exit;"

all:
	make clear;
	make compile;
	make simulate;

clear:
	clear
