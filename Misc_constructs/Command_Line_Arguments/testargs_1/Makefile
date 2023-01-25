all:
	clear
	rm -rf work CLI_testargs.log
	vlib work
	vlog CLI_testargs.sv
	vsim CLI_testargs -l CLI_testargs.log -c -do "run -all;quit;" +START

compile:
	rm -rf work CLI_testargs.log
	vlib work
	vlog CLI_testargs.sv

simulate:
	vsim CLI_testargs -l CLI_testargs.log -c -do "run -all;quit;" +START

clear:
	clear
	rm -rf work CLI_testargs.log
