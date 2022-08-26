compile:
			vlib work;
			vlog -sv if_code.sv

simulate:
			vsim if_code -l if_code_output.log -c -do "run -all; exit;"

all:
			make compile && make simulate
