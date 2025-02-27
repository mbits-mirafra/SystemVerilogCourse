all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv queue_code.sv 

simulate:
	vsim mod -l queue_code.log -c -do "run -all; exit;"

clear:
	clear
