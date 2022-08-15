compile:
	vlib work;
	vlog -sv for_loop.sv

simulate:
	vsim work.tb -l for_loop_outut.log -c -do "run -all; exit;"

all:
	make compile && make simulate
