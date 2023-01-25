compile:
	vlib work;
	vlog -sv randomization.sv 

simulate:
	vsim randomization -l randomization_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv randomization.sv
	vsim randomization -l randomization_log.log -c -do "run -all;exit;"
