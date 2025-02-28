all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv memory_n_var_partitions.sv 

simulate:
	vsim memory_n_var_partitions -l memory_n_var_partitions_log.log -c -do "run -all;exit;"

clear:
	clear
