compile:
		vlib work;
			vlog -sv unique_if2.sv

simulate:
		vsim unique_if2 -l unique_if2_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv unique_if2.sv
		vsim unique_if2 -l unique_if2_log.log -c -do "run -all; exit;"

