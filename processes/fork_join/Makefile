all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv fork_join.sv

simulate:
	vsim fork_join -l fork_join.log -c -do "run -all;quit;"

clear:
	clear

