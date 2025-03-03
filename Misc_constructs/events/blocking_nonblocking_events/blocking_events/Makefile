all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv blocking_events.sv

simulate:
	vsim blocking_event -l blocking_events.log -c -do "run -all;exit;"

clear:
	clear
		
