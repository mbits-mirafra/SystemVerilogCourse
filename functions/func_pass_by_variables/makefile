compile:
	vlib work;
	vlog -sv func_pass_by_variables.sv

simulate :
	vsim work.func_pass_by_variables -l func_pass_by_variables_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv func_pass_by_variables.sv
	vsim work.func_pass_by_variables -l func_pass_by_variables_log.log -c -do "run -all;exit;"
