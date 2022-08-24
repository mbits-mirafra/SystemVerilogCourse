all:
	make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv disable_fork.sv

simulate:
	vsim disable_fork -l disable_fork.log -c -do "run -all;quit;"

clear:
	clear
	rm -rf disable_fork.log

