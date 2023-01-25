compile:
	vlib work;
	vlog -sv forever_loop.sv

simulate:
	vsim forever_loop -l forever_loop_output.log -c -do "run -all; exit;"

all:
	vlib work;
	vlog -sv forever_loop.sv
	vsim forever_loop -l forever_loop_output.log -c -do "run -all; exit;"
