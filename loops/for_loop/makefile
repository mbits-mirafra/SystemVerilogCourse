compile:
		vlib work;
		vlog -sv for_code.sv

simulate:
		vsim for_loop -l for_loop_output.log -c -do "run -all; exit;"

all:
		make compile && make simulate
