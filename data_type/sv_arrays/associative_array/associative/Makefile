compile:
	vlib work;
	vlog -sv associative_array.sv

simulate:
	vsim associative_array -l associative_array.log -c -do "run -all;quit;"

all:
	make clear;make compile;make simulate

clear:
	clear

