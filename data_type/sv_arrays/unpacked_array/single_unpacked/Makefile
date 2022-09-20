compile:
	vlib work;
	vlog -sv unpacked.sv

simulate:
	vsim unpacked_array -l unpacked_array.log -c -do "run -all;quit;"

all:
	make clear;make compile;make simulate

clear:
	clear

