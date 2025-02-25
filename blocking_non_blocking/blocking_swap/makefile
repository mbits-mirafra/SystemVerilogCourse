all:
	make clear;
	make compile;
	make simulate;
 	
compile:
	vlog -sv blocking_swap.sv

simulate :
	vsim work.blocking_swap -l blocking_swap_log.log -c -do "run -all;exit;"

clear:
	clear
