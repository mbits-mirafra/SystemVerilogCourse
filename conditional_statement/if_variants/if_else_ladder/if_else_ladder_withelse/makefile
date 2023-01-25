compile:
		vlib work;
			vlog -sv if_elseif_else.sv

simulate:
		vsim if_elseif_else -l if_elseif_else_log.log -c -do "run -all; exit;"

all:

		vlib work;
			vlog -sv if_elseif_else.sv
		vsim if_elseif_else -l if_elseif_else_log.log -c -do "run -all; exit;"

		
