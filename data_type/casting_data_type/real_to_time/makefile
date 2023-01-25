compile:
	vlib work;
	vlog -sv real_to_time.sv

simulate:
	vsim casting_real_time -l real_to_time.log -c -do "run -all; exit;"

all:
	make clear;
	make compile;
	make simulate;

clear:
	clear
