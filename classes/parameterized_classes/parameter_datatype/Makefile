all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv parameter_datatype.sv

simulate:
	vsim work.value -l parameter_datatype.log -c -do "run -all;exit;"

clear:
	clear
