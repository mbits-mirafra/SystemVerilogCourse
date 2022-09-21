all:
	rm -rf object.log
	rm -rf work
	clear
	vlib work;
	vlog -sv object.sv && vsim tb -l object.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv object.sv

simulate:
	vsim tb -l object.log -c -do "run -all;quit;"

clear:
	rm -rf object.log
	rm -rf work
	clear

