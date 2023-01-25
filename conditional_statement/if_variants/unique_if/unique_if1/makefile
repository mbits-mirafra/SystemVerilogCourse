compile:
		vlib work;
			vlog -sv unique_if1.sv

simulate:
		vsim unique_if1 -l unique_if1_log.log -c -do "run -all; exit;"

all:
		vlib work;
			vlog -sv unique_if1.sv
		vsim unique_if1 -l unique_if1_log.log -c -do "run -all; exit;"

