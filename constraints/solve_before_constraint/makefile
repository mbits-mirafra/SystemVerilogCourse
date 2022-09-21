compile:
	vlib work;
	vlog -sv solve_before.sv 

simulate:
	vsim solve_before -l solve_before_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv solve_before.sv
	vsim solve_before -l solve_before_log.log -c -do "run -all;exit;"
