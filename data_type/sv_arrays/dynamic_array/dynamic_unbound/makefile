all:
	make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv dynamic.sv

simulate:
	vsim dynamic  -l dynamic.log -c -do "run -all;quit;"

clear:
	clear
