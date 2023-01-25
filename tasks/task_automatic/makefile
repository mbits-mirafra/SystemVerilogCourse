compile:
	vlib work;
	vlog -sv task_fact.sv

simulate :
	vsim work.task_fact -l task_fact_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv task_fact.sv
	vsim work.task_fact -l task_fact_log.log -c -do "run -all;exit;"
