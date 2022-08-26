compile:
			vlib work;
			vlog -sv do_while_code.sv

simulate:
			vsim do_while_code -l do_while_code_output.log -c -do "run -all; exit;"

all: 
		make compile && make simulate
