all:
	rm -rf work
	clear
	vlib work;
	vlog -sv instance_class.sv && vsim tb -l instance_class.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv instance_class.sv

simulate:
	vsim tb -l instance_class.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
