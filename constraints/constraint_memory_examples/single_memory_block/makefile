all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv single_memory_block.sv 

simulate:
	vsim single_memory_block -l single_memory_block_log.log -c -do "run -all;exit;"

clear:
	clear
