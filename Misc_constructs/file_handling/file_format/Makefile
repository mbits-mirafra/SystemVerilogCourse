all:
	rm -rf work
	clear
	vlib work;
	vlog -sv file_format.sv && vsim format -l file_format.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv file_format.sv

simulate:
	vsim format -l file_format.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
