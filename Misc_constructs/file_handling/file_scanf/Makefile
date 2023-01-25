all:
	rm -rf work
	clear
	vlib work;
	vlog -sv file_scanf.sv && vsim scanf -l file_scanf.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv file_scanf.sv

simulate:
	vsim scanf -l file_scanf.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
