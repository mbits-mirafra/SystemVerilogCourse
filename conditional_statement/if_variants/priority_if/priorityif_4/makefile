compile:
		vlib work;
			vlog -sv priorityif_4.sv

simulate:
		vsim priorityif_4 -l priorityif_4_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv priorityif_4.sv
		vsim priorityif_4 -l priorityif_4_log.log -c -do "run -all; exit;"

