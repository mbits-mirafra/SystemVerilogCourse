all:
	make clear;
	make compile;
	make simulate;
							
compile:
	vlog -sv try_peek.sv

simulate:
	vsim tb -l try_peek_op.log -c -do "run -all;quit;"

clear:
	clear
