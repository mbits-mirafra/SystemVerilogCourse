all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv priorityif_1.sv

simulate:
	vsim priorityif_1 -l priorityif_1_log.log -c -do "run -all; exit;"

clear:
	clear


