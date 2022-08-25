compile:
	vlib work;
	vlog -sv dynamic.sv

simulate:
	vsim dynamic_array -l dynamic_array.log -c -do "run -all;quit;"

all:
	make clear;make compile;make simulate

clear:
	clear

