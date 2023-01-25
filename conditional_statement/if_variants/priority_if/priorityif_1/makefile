compile:
		vlib work;
			vlog -sv priorityif_1.sv

simulate:
		vsim priorityif_1 -l priorityif_1_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv priorityif_1.sv
		vsim priorityif_1 -l priorityif_1_log.log -c -do "run -all; exit;"


