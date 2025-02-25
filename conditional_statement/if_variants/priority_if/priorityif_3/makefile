all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv priorityif_3.sv

simulate:
	vsim priorityif_3 -l priorityif_3_log.log -c -do "run -all; exit;"

clear:
	clear
