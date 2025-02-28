all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv randcase_code.sv

simulate:
	vsim r_case -l randcase_code_output.log -c -do "run -all; exit;"

clear:
	clear
