compile:
	vlib work;
	vlog -sv packed_array.sv

simulate:
	vsim packed_array -l packed_array.log -c -do "run -all;quit;"

all:
	make clear;make compile;make simulate

clear:
	clear

