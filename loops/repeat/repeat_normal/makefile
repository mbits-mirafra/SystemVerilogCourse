compile:
		vlib work;
			vlog -sv repeat.sv

simulate:
		vsim repeat_code -l repeat_code_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv repeat.sv
		vsim repeat_code -l repeat_code_log.log -c -do "run -all; exit;"

		
