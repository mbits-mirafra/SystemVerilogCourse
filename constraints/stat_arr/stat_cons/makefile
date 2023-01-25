compile:
		vlib work;
			vlog -sv stat_cons.sv

simulate:
	vsim mod -l stat_cons_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv stat_cons.sv
		vsim mod -l stat_cons_log.log -c -do "run -all; exit;"
