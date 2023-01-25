compile:
		vlib work;
			vlog -sv priorityif_2.sv

simulate:
		vsim priorityif_2 -l priorityif_2_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv priorityif_2.sv

		vsim priorityif_2 -l priorityif_2_log.log -c -do "run -all; exit;"

