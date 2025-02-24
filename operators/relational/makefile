all:
	make compile;
	make simulate;
	make clear;

compile:
	vlib work;
	vlog -sv relational_code.sv

simulate:
	vsim relational_code -l relational_code_output.log -c -do "run -all;quit;"

clear:
	clearall:
	make clear;make compile;make simulate


