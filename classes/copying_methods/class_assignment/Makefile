all:
	rm -rf work
	clear
	vlib work;
	vlog -sv class_assignment.sv && vsim assignment -l class_assignment.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv class_assignment.sv

simulate:
	vsim assignment -l class_assignment.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
