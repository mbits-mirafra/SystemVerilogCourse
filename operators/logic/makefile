compile:
			vlib work;
			vlog -sv logic_code.sv

simulate:
			vsim logic_code -l logic_code_output.log -c -do "run -all; exit;"

all:
			vlib work;
			vlog -sv logic_code.sv
			vsim logic_code -l logic_code_output.log -c -do "run -all; exit;"
