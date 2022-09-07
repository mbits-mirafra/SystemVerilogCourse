
compile:
			vlib work;
			vlog -sv equality_code.sv

simulate:
			vsim equality_code -l equality_code_output.log -c -do "run -all; exit;"

all:
			vlib work;
			vlog -sv equality_code.sv
			vsim equality_code -l equality_code_output.log -c -do "run -all; exit;"
