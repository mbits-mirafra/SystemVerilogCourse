compile:
		vlib work;
			vlog -sv if_elseif.sv

simulate:
		vsim if_elseif -l if_elseif_log.log -c -do "run -all; exit;"

all:
		vlib work;
			vlog -sv if_elseif.sv
		vsim if_elseif -l if_elseif_log.log -c -do "run -all; exit;"

