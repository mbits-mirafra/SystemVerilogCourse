all:
	make clear;
	make compile;
	make simulate;
							
compile:
	vlog -sv try_get.sv

simulate:
	vsim tb -l try_get_op.log -c -do "run -all;quit;"

clear:
	clear
