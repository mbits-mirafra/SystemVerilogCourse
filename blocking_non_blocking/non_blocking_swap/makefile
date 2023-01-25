compile:
	vlib work;
	vlog -sv non_blocking_swap.sv

simulate :
	vsim work.non_blocking_swap -l non_blocking_swap_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
