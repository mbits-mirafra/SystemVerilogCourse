all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv merging_events.sv

simulate:
	vsim merge_events -l merging_events.log -c -do "run -all;quit;"

clear:
	clear

