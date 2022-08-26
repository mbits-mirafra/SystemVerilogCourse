compile:
	vlib work;
	vlog -sv task.sv

simulate :
	vsim task1 -l task1.log -c -do "run -all;exit;"

all:
	make compile && make simulate
