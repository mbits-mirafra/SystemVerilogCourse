compile:
	vlib work;
	vlog -sv pre_randomization.sv 

simulate:
	vsim pre_randomization -l pre_randomization_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv pre_randomization.sv
	vsim pre_randomization -l pre_randomization_log.log -c -do "run -all;exit;"
