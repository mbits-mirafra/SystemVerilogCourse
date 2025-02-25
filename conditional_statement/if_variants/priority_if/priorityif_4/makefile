all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv priorityif_4.sv

simulate:
	vsim priorityif_4 -l priorityif_4_log.log -c -do "run -all; exit;"

clear:
	clear
