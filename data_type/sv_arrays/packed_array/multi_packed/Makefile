compile:
	vlib work;
	vlog -sv multi_packed.sv

simulate:
	vsim multi_packed -l multi_packed.log -c -do "run -all;quit;"

all:
	make clear;make compile;make simulate

clear:
	clear

