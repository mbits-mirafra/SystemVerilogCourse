

compile:
		vlib work;
			vlog -sv randc_var.sv

simulate:
		vsim randc_var -l randc_var_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv randc_var.sv
		vsim randc_var -l randc_var_log.log -c -do "run -all; exit;"
