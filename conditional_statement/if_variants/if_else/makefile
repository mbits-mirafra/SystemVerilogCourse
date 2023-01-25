compile:
		vlib work;
			vlog -sv if_else.sv

simulate:
		vsim if_else -l if_else_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv if_else.sv
		vsim if_else -l if_else_log.log -c -do "run -all; exit;"

		
