all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv global_task.sv

simulate:
	vsim work.task1 work.task2 -l global_task_log.log -c -do "run -all;exit;"

clear:
	clear
