compile:
	vlib work;
	vlog -sv foreach_loop.sv

simulate :
	vsim work.foreach_loop -l foreach_loop_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv foreach_loop.sv
	vsim work.foreach_loop -l foreach_loop_log.log -c -do "run -all;exit;"
