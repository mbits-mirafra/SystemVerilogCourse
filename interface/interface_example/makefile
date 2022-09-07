compile:
	vlib work;
	vlog -sv interface.sv test.sv interface_module.sv top.sv

simulate:
	vsim top -l interface.log -c -do "run -all; exit;"

all:
	make clear;
	make compile;
	make simulate;

clear:
	clear
