all:
	rm -rf wait_fork.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv wait_fork.sv && vsim wait_fork -l wait_fork.log -c -do "run -all;quit;"
	#make clear;make compile;make simulate

compile:
	vlib work;
	vlog -sv wait_fork.sv

simulate:
	vsim wait_fork -l wait_fork.log -c -do "run -all;quit;"

clear:
	rm -rf wait_fork.log
	rm -rf work
	clear

