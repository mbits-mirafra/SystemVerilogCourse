compile:
			vlib work;
			vlog -sv concatenation_code.sv

simulate:
			vsim concatenation_code -l concatenation_code_output.log -c -do "run -all; exit;"

all:

			vlib work;
			vlog -sv concatenation_code.sv
			vsim concatenation_code -l concatenation_code_output.log -c -do "run -all; exit;"
