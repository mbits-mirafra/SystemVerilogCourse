compile:
			vlib work;
			vlog -sv priority_if_code.sv

simulate:
			vsim priority_if_code -l priority_if_code_output.log -c -do "run -all; exit;"

all:
			make compile && make simulate
