compile:
	vlib work;
	vlog -sv static_task.sv

simulate :
	vsim work.task1 -l task1.log -c -do "run -all;exit;"

all:
	make compile && make simulate
