compile:
	vlib work;
		vlog -sv memory_partition_with_spaces.sv 

simulate:
	vsim memory_partition_with_spaces -l memory_partition_with_spaces_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv memory_partition_with_spaces.sv
	vsim memory_partition_with_spaces -l memory_partition_with_spaces_log.log -c -do "run -all;exit;"
