all:
	rm -rf work
	clear
	vlib work;
	vlog -sv parameter_value.sv && vsim value -l parameter_value.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv parameter_value.sv

simulate:
	vsim value -l parameter_value.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
