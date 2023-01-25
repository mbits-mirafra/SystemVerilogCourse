compile:
	vlib work;
	vlog -sv blocking_swap.sv

simulate :
	vsim work.blocking_swap -l blocking_swap_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
