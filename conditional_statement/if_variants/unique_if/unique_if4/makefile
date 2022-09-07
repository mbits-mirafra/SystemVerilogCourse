compile:
		vlib work;
			vlog -sv unique_if4.sv

simulate:
		vsim unique_if4 -l unique_if4_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv unique_if4.sv
		vsim unique_if4 -l unique_if4_log.log -c -do "run -all; exit;"

