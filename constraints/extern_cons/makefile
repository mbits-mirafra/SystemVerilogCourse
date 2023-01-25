

compile:
		vlib work;
			vlog -sv extern_cons.sv

simulate:
	vsim mod -l extern_cons_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv extern_cons.sv
		vsim mod -l extern_cons_log.log -c -do "run -all; exit;"
