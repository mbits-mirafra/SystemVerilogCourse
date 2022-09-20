

compile:
		vlib work;
			vlog -sv dyn_arr.sv

simulate:
	vsim mod -l dyn_arr_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv dyn_arr.sv
		vsim mod -l dyn_arr_log.log -c -do "run -all; exit;"
