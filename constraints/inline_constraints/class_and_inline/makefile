compile:
	vlib work;
		vlog -sv inline_constraint.sv 

simulate:
	vsim inline_constraint -l inline_constraint_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv inline_constraint.sv
	vsim inline_constraint -l inline_constraint_log.log -c -do "run -all;exit;"
