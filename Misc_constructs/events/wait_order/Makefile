all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv wait_order.sv

simulate:
	vsim events_ex -l wait_order.log -c -do "run -all;exit;"

clear:
	clear
		
