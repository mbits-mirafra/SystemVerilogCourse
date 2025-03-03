all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv parameter_value.sv

simulate:
	vsim work.value -l parameter_value.log -c -do "run -all;exit;"

clear:
	clear
