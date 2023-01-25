compile:
			vlib work;
			vlog -sv soft_with_conflict.sv

simulate:
			vsim soft_with_conflict  -l soft_with_conflict_output.log -c -do "run -all; exit;"
all:
	    vlib work;
			vlog -sv soft_with_conflict.sv
			vsim soft_with_conflict -l soft_with_conflict_output.log -c -do "run -all; exit;"
