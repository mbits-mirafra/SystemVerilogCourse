all:
	make clear;
	make compile;
	make simulate;
						
compile:
	vlog -sv get.sv

simulate:
	vsim tb -l get_op.log -c -do "run -all;quit;"

clear:
	clear
