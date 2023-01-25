compile:
		vlib work;
		vlog -sv table_for_loop.sv

simulate:
		 vsim table_for_loop -l tabe_for_loop_output.log -c -do "run -all; exit;"

all:
	vlib work;
	vlog -sv table_for_loop.sv
	vsim table_for_loop -l tabe_for_loop_output.log -c -do "run -all; exit;"

