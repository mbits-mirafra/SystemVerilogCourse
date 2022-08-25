compile:
	vlib work;
	vlog -sv forever_code.sv

simulate:
	vsim forever_loop -l forever_loop_output.log -c -do "run -all; exit;"

all:
	make compile && make simulate

