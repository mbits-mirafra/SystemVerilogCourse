all:
	make clear;
	make compile;
	make simulate;
														
compile:
	vlog -sv put.sv

simulate:
	vsim tb -l put_op.log -c -do "run -all;quit;"

clear:
	clear
