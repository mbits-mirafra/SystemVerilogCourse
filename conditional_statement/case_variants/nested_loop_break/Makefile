compile:
		vlib work;
			vlog -sv nested_loop.sv

simulate:
		vsim nested_loop -l nested_loop_op.log -c -do "run -all; exit;"

all:
		 vlib work;
		 vlog -sv nested_loop.sv
		 vsim nested_loop -l nested_loop_op.log -c -do "run -all; exit;"
