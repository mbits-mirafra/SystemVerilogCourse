compile:
			vlib work;
			vlog -sv reduction_code.sv

simulate:
			vsim reduction_code -l reduction_code_output.log -c -do "run -all; exit;"

all:
			vlib work;
			vlog -sv reduction_code.sv
			vsim reduction_code -l reduction_code_output.log -c -do "run -all; exit;"
