compile:
	vlib work;
	vlog -sv post_randomization.sv 

simulate:
	vsim post_randomization -l post_randomization_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv post_randomization.sv
	vsim post_randomization -l post_randomization_log.log -c -do "run -all;exit;"
