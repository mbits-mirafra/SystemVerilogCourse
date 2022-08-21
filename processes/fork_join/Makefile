all:
	make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv fork_join.sv

simulate:
	vsim sample -l fork_join.log -c -do "run -all;quit;"

clear:
	clear

