all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv extern_cons.sv

simulate:
	vsim mod -l extern_cons_log.log -c -do "run -all; exit;"

clear:
	clear
