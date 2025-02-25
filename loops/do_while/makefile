all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv do_while.sv

simulate:
	vsim work.do_while -l do_while_log.log -c -do "run -all;exit;"

clear:
	clear
