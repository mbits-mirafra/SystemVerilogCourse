compile:
	vlib work;
	vlog -sv simple_task.sv

simulate :
	vsim work.simple_task -l simple_task_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv simple_task.sv
	vsim work.simple_task -l simple_task_log.log -c -do "run -all;exit;"
