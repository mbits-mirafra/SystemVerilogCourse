all:
	make clear;
	make compile;
	make simulate;

compile:
	vlib work;
	vlog -sv bit_to_byte.sv

simulate:
	vsim casting_bit_byte -l bit_ti_byte.log -c -do "run -all; exit;"

clear:
	clear
