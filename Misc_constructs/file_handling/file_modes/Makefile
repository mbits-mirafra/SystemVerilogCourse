all:
	rm -rf work
	clear
	vlib work;
	vlog -sv file_modes.sv && vsim file_modes -l file_modes.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv file_modes.sv

simulate:
	vsim file_modes -l file_modes.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
