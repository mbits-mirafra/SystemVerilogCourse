all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv while_basic.sv

simulate:
	vsim work.while_basic -l while_basic_log.log -c -do "run -all;exit;"

clear:
	clear
