
compile:
	vlib work;
	vlog -sv dynamic.sv

simulate:
	vsim dynamic  -l dynamic.log -c -do "run -all;quit;"

all:
	make clear;make compile;make simulate

clear:
	clear
