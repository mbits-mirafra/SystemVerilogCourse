all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv memory_n_equal_partitions.sv 

simulate:
	vsim memory_n_equal_partitions -l memory_n_equal_partitions_log.log -c -do "run -all;exit;"

clear:
	clear
