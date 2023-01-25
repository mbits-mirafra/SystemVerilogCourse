all:
	rm -rf disable_fork.log
	rm -rf work
	clear
	vlib work;
	vlog -sv disable_fork.sv && vsim disable_fork -l disable_fork.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv disable_fork.sv

simulate:
	vsim disable_fork -l disable_fork.log -c -do "run -all;quit;"

clear:
	rm -rf disable_fork.log
	rm -rf work
	clear
	

