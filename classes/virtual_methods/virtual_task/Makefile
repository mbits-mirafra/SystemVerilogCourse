all:
	rm -rf work
	clear
	vlib work;
	vlog -sv virtual_task.sv && vsim virtual_task -l virtual_task.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv virtual_task.sv

simulate:
	vsim virtual_task -l virtual_task.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
