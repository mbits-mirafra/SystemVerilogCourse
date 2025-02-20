all:
	make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv multi_unpacked.sv

simulate:
	vsim multi_unpacked -l multi_unpacked.log -c -do "run -all;quit;"

clear:
	clear

