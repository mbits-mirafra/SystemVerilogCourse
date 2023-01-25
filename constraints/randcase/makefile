compile:
			vlib work;
			vlog -sv randcase_code.sv
simulate:
			vsim r_case -l randcase_code_output.log -c -do "run -all; exit;"
all:
			vlib work;
			vlog -sv randcase_code.sv
			vsim r_case -l randcase_code_output.log -c -do "run -all; exit;"
