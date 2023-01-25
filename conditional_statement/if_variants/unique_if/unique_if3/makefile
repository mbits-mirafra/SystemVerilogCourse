compile:
		vlib work;
			vlog -sv unique_if3.sv

simulate:
		vsim unique_if3 -l unique_if3_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv unique_if3.sv
		vsim unique_if3 -l unique_if3_log.log -c -do "run -all; exit;"

		
