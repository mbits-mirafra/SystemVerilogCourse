compile:
	vlib work;
		vlog -sv static_constraint.sv 

simulate:
	vsim static_constraint -l static_constraint_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv static_constraint.sv
	vsim static_constraint -l static_constraint_log.log -c -do "run -all;exit;"
