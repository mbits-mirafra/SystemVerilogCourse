compile:
	vlib work;
	vlog -sv task_from_func.sv

simulate :
	vsim work.task_from_func -l task_from_func_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv task_from_func.sv
	vsim work.task_from_func -l task_from_func_log.log -c -do "run -all;exit;"
