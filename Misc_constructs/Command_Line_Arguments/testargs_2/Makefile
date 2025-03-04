all:
	make clear
	make compile
	make simulate

compile:
	vlog CLI_testargs.sv

simulate:
	vsim CLI_testargs2 -l CLI_testargs.log -c -do "run -all;quit;" +START

clear:
	clear
