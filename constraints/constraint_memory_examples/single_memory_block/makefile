compile:
	vlib work;
		vlog -sv single_memory_block.sv 

simulate:
	vsim single_memory_block -l single_memory_block_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv single_memory_block.sv
	vsim single_memory_block -l single_memory_block_log.log -c -do "run -all;exit;"
