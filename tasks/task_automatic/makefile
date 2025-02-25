all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv task_fact.sv

simulate:
	vsim work.task_fact -l task_fact_log.log -c -do "run -all;exit;"

clear:
	clear
