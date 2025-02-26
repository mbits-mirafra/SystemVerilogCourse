all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv fork_join_any.sv

simulate:
	vsim fork_join_any -l fork_join_any.log -c -do "run -all;quit;"

clear:
	clear

