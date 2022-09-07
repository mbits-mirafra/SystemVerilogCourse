compile:
		vlib work;
			vlog -sv unique0_if.sv

simulate:
		vsim unique0_if -l unique0_if.log -c -do "run -all; exit;"
all:

		vlib work;
			vlog -sv unique0_if.sv
		vsim unique0_if -l unique0_if.log -c -do "run -all; exit;"
