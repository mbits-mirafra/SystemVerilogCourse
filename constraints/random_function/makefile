

compile:
		vlib work;
			vlog -sv random_function.sv

simulate:
		vsim ran_fun -l random_function_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv random_function.sv
		vsim ran_fun -l random_function_log.log -c -do "run -all; exit;"
