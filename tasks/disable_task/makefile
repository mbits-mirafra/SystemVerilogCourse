compile:
	vlib work;
	vlog -sv disable_task.sv

simulate :
	vsim work.disable_task -l disable_task_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv disable_task.sv
	vsim work.disable_task -l disable_task_log.log -c -do "run -all;exit;"
