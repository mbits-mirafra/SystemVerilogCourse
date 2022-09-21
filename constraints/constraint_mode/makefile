
compile:
			vlib work;
			vlog -sv constraint_mode_code.sv

simulate:
			vsim constraint_mode -l constraint_mode_code_output.log -c -do "run -all; exit;"

all:

			vlib work;
			vlog -sv constraint_mode_code.sv
			vsim constraint_mode -l constraint_mode_code_output.log -c -do "run -all; exit;"
