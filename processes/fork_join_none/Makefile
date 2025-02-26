all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv fork_join_none.sv

simulate:
	vsim fork_join_none -l fork_join_none.log -c -do "run -all;quit;"

clear:
	clear

