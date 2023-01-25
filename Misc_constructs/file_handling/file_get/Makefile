all:
	rm -rf work
	clear
	vlib work;
	vlog -sv file_get.sv && vsim f_get -l file_get.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv file_get.sv

simulate:
	vsim f_get -l file_get.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear

