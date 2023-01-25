compile:
			vlib work;
			vlog -sv bitwise_code.sv

simulate:
			vsim bitwise_code -l bitwise_code_output.log -c -do "run -all; exit;"

all:
	vlib work;
	vlog -sv bitwise_code.sv
	vsim bitwise_code -l bitwise_code_output.log -c -do "run -all; exit;"
