compile:
			vlib work;
			vlog -sv arithmetic_code.sv

simulate:
			vsim arithmetic_code -l arithmetic_code_output.log -c -do "run -all; exit;"

all:

			vlib work;
			vlog -sv arithmetic_code.sv
			vsim arithmetic_code -l arithmetic_code_output.log -c -do "run -all; exit;"
