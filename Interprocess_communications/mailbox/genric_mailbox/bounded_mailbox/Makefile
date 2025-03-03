all:
	make clear;
	make compile;
	make simulate;
							
compile:
	vlog -sv bound.sv

simulate:
	vsim tb -l bound_op.log -c -do "run -all;quit;"

clear:
	clear
