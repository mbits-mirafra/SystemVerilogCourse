

compile:
		vlib work;
			vlog -sv stat_arr_rndm.sv

simulate:
	vsim stat_array -l stat_arr_rndm_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv stat_arr_rndm.sv
		vsim stat_array -l stat_arr_rndm_log.log -c -do "run -all; exit;"
