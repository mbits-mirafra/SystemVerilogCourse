compile:
		vlib work;
			vlog -sv if_code.sv

simulate:
		vsim if_code -l if_code_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv if_code.sv
		vsim if_code -l if_code_log.log -c -do "run -all; exit;"

