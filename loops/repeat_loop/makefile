
compile:
		vlib work;
		vlog -sv repeat_code.sv

simulate:
		vsim repeat_loop -l repeat_loop_output.log -c -do "run -all; exit;"

all:
		make compile && make simulate
