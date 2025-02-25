all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv simple_task.sv

simulate:
	vsim work.simple_task -l simple_task_log.log -c -do "run -all;exit;"

clear:
	clear
