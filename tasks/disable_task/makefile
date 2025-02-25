all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv disable_task.sv

simulate:
	vsim work.disable_task -l disable_task_log.log -c -do "run -all;exit;"

clear:
	clear
