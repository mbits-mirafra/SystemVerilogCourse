compile:
		vlib work;
			vlog -sv repeat_for.sv

simulate:
		vsim repeat_for -l repeat_for_log.log -c -do "run -all; exit;"

all:
		
		vlib work;
		vlog -sv repeat_for.sv
		vsim repeat_for -l repeat_for_log.log -c -do "run -all; exit;"

