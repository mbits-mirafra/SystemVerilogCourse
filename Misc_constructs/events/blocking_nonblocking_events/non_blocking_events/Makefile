all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv non_blocking_events.sv

simulate:
	vsim non_blocking_event -l non_blocking_events.log -c -do "run -all;exit;"

clear:
	clear
		
