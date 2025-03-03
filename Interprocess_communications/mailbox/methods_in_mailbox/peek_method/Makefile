all:
	make clear;
	make compile;
	make simulate;
							
compile:
	vlog -sv peek.sv

simulate:
	vsim tb -l peek_op.log -c -do "run -all;quit;"

clear:
	clear
