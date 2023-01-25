compile:
	vlib work;
		vlog -sv memory_n_var_partitions.sv 

simulate:
	vsim memory_n_var_partitions -l memory_n_var_partitions_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv memory_n_var_partitions.sv
	vsim memory_n_var_partitions -l memory_n_var_partitions_log.log -c -do "run -all;exit;"
