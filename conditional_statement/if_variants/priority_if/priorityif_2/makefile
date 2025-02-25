all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv priorityif_2.sv

simulate:
	vsim priorityif_2 -l priorityif_2_log.log -c -do "run -all; exit;"

clear:
	clear
