compile:
			vlib work;
			vlog -sv shift_code.sv

simulate:
			vsim shift_code -l shift_code_output.log -c -do "run -all; exit;"

all:
			vlib work;
			vlog -sv shift_code.sv
			vsim shift_code -l shift_code_output.log -c -do "run -all; exit;"
