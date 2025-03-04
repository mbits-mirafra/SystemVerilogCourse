all:
	make clear
	make compile
	make simulate

compile:
	vlog CLI_valueargs.sv

simulate:
	vsim CLI_valargs -l CLI_valueargs.log -c -do "run -all;quit;" +START +msg=HEY! +value=2

clear:
	clear
