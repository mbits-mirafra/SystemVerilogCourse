all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv func_from_task.sv

simulate:
	vsim work.func_from_task -l func_from_task_log.log -c -do "run -all;exit;"

clear:
	clear
