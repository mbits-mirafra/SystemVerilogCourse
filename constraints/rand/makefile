
compile:
		vlib work;
			vlog -sv rand.sv

simulate:
		vsim rand_var -l rand_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv rand.sv
		vsim rand_var -l rand_log.log -c -do "run -all; exit;"
