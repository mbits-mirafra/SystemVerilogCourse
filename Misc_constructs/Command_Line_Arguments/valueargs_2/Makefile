all:
	make clear
	make compile
	make simulate

compile:
	vlog CLI_valueargs1.sv

simulate:
	vsim CLI_valargs1 -l CLI_valueargs.log -c -do "run -all;quit;" +START +msg=HEY! +file="sample.txt"

clear:
	clear
