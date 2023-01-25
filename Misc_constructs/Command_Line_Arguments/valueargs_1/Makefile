all:
	clear
	rm -rf work CLI_valueargs.log
	vlib work
	vlog CLI_valueargs.sv
	vsim CLI_valargs -l CLI_valueargs.log -c -do "run -all;quit;" +msg=HEY! +value=2

compile:
	rm -rf work CLI_valueargs.log
	vlib work
	vlog CLI_valueargs.sv

simulate:
	vsim CLI_valargs -l CLI_valueargs.log -c -do "run -all;quit;" +START +msg=HEY! +value=2

clear:
	clear
	rm -rf work CLI_valueargs.log
