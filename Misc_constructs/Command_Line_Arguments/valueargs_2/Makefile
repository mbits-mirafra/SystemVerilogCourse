all:
	clear
	rm -rf work CLI_valueargs.log
	vlib work
	vlog CLI_valueargs1.sv
	vsim CLI_valargs1 -l CLI_valueargs.log -c -do "run -all;quit;" +msg=HEY! +file="sample.txt"

compile:
	rm -rf work CLI_valueargs.log
	vlib work
	vlog CLI_valueargs1.sv

simulate:
	vsim CLI_valargs1 -l CLI_valueargs.log -c -do "run -all;quit;" +START +msg=HEY! +file="sample.txt"

clear:
	clear
	rm -rf work CLI_valueargs.log
