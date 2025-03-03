all:
	make clear;
	make compile;
	make simulate;
							
compile:
	vlog -sv unbound.sv

simulate:
	vsim tb -l unbound_op.log -c -do "run -all;quit;"

clear:
	clear
