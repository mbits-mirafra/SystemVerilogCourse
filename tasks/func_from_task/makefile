compile:
	vlib work;
	vlog -sv func_from_task.sv

simulate :
	vsim work.func_from_task -l func_from_task_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv func_from_task.sv
	vsim work.func_from_task -l func_from_task_log.log -c -do "run -all;exit;"
