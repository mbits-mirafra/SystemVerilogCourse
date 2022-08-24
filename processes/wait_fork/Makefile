all:
	make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv wait_fork.sv

simulate:
	vsim wait_fork -l wait_fork.log -c -do "run -all;quit;"

clear:
	clear
	rm -rf wait_fork.log

