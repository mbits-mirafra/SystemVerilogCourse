compile:
			vlib work;
			vlog -sv while_code.sv

simulate:
			vsim while_code -l while_loop_output.log -c -do "run -all; exit;"

all:
			make compile && make simulate
