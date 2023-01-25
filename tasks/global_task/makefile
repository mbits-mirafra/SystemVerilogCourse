compile:
	vlib work;
	vlog -sv global_task.sv

simulate :
	vsim task1 task2 -l global_task_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv global_task.sv
	vsim task1 task2 -l global_task_log.log -c -do "run -all;exit;"
