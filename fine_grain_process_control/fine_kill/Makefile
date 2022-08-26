all:
	make clear;make compile;make simulate

compile:
	vlib work
	vlog -sv fine_kill.sv

simulate:
	vsim fine_kill -l fine_kill.log -c -do "run -all;quit;"

clear:
	clear
	rm -rf fine_kill.log
