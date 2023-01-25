compile:
		vlib work;
			vlog -sv priorityif_3.sv

simulate:
		vsim priorityif_3 -l priorityif_3_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv priorityif_3.sv
		vsim priorityif_3 -l priorityif_3_log.log -c -do "run -all; exit;"

