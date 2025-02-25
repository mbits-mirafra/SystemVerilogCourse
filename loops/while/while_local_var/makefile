all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv while_with_var.sv

simulate:
	vsim work.while_with_var -l while_with_var_log.log -c -do "run -all;exit;"

clear:
	clear
