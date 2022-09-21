compile:
	vlib work;
		vlog -sv memory_pgm_data.sv 

simulate:
	vsim memory_pgm_data -l memory_pgm_data_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv memory_pgm_data.sv
	vsim memory_pgm_data -l memory_pgm_data_log.log -c -do "run -all;exit;"
