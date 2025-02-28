all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv check_randomization_code.sv

simulate:
	vsim mod -l check_randomization_output.log -c -do "run -all; exit;"

clear:
	clear
