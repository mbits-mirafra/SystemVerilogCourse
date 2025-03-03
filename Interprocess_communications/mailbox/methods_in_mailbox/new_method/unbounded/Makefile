all:
	make clear;
	make compile;
	make simulate;
							
compile:
	vlog -sv new_md.sv

simulate:
	vsim tb -l new_op.log -c -do "run -all;quit;"

clear:
	clear
