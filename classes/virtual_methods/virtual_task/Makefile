all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv virtual_task.sv

simulate:
	vsim work.virtual_task -l virtual_task.log -c -do "run -all;exit;"

clear:
	clear
