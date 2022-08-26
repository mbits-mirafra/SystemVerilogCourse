compile:
			vlib work;
			vlog -sv if_else_code.sv

simulate:
			vsim if_else_code -l if_else_code_output.log -c -do "run -all; exit;"

all: 
	make compile && make simulate
