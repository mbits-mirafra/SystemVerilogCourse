all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv unique_if3.sv

simulate:
	vsim unique_if3 -l unique_if3_log.log -c -do "run -all; exit;"

clear:
	clear
		
