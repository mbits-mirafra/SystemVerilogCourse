compile:
	vlib work;
	vlog -sv function_by_value.sv

simulate :
	vsim work.func_by_value -l func_by_value_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
