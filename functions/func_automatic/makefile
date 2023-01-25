compile:
	vlib work;
	vlog -sv func_automatic.sv

simulate :
	vsim work.func_automatic -l func_automatic_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv func_automatic.sv
	vsim work.func_automatic -l func_automatic_log.log -c -do "run -all;exit;"
