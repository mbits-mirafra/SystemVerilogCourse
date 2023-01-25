all:
	rm -rf handle.log
	rm -rf work
	clear
	vlib work;
	vlog -sv handle.sv && vsim tb -l handle.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv handle.sv

simulate:
	vsim tb -l handle.log -c -do "run -all;quit;"

clear:
	rm -rf handle.log
	rm -rf work
	clear

