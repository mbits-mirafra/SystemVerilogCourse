compile:
			vlib work;
			vlog -sv conditional_code.sv

simulate:
			vsim conditional_code -l conditional_code_output.log -c -do "run -all; exit;"

all:
			vlib work;
			vlog -sv conditional_code.sv
			vsim conditional_code -l conditional_code_output.log -c -do "run -all; exit;"
