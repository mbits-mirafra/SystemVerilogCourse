all:
	make clear;
	make compile;
	make simulate;
							
compile:
	vlog -sv num.sv

simulate:
	vsim tb -l num_op.log -c -do "run -all;quit;"

clear:
	clear
