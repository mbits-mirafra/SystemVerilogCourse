all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv memory_pgm_data.sv 

simulate:
	vsim memory_pgm_data -l memory_pgm_data_log.log -c -do "run -all;exit;"

clear:
	clear
