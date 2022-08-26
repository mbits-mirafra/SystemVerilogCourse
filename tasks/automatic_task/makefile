compile:
	vlib work;
	vlog -sv automatic_task.sv

simulate :
	vsim work.task_auto -l task_auto_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
