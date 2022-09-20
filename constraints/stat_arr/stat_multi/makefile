

compile:
		vlib work;
			vlog -sv stat_arr_multi.sv

simulate:
	vsim mod -l stat_arr_multi_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv stat_arr_multi.sv
		vsim mod -l stat_arr_multi_log.log -c -do "run -all; exit;"
