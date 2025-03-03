all:
all:
	make clear;
	make compile;
	make simulate;
							
compile:
	vlog -sv try_put.sv

simulate:
	vsim tb -l try_put_op.log -c -do "run -all;quit;"

clear:
	clear
