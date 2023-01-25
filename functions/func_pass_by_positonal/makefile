compile:
	vlib work;
	vlog -sv func_pass_by_positional.sv

simulate :
	vsim work.func_pass_by_positional -l func_pass_by_positional_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv func_pass_by_positional.sv
	vsim work.func_pass_by_positional -l func_pass_by_positional_log.log -c -do "run -all;exit;"
