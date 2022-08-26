compile:
	vlib work
	vlog -sv unique_if_code.sv 

simulate:
	vsim unique_if_else_code -l unique_if_code_output.log -c -do "run -all; exit;"

all: 
	make compile && make simulate
