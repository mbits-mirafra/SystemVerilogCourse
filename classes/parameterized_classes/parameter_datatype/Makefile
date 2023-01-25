all:
	rm -rf work
	clear
	vlib work;
	vlog -sv parameter_datatype.sv && vsim test -l parameter_datatype.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv parameter_datatype.sv

simulate:
	vsim test -l parameter_datatype.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
