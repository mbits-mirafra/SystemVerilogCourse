compile:
	vlib work;
	vlog -sv logic_to_byte.sv

simulate:
	vsim casting_logic_byte -l logic_to_byte.log -c -do "run -all; exit;"

all:
	make clear;
	make compile;
	make simulate;

clear:
	clear
