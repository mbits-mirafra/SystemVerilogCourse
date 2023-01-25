compile:
	vlib work;
	vlog -sv func_pass_by_val.sv

simulate :
	vsim work.func_pass_by_val -l func_pass_by_val_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv func_pass_by_val.sv
	vsim work.func_pass_by_val -l func_pass_by_val_log.log -c -do "run -all;exit;"
