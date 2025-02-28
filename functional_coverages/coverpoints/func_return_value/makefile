all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv func_return_value.sv
	
simulate :
	vsim -cvgperinstance work.func_return_value -l func_return_value.log -c -do \
		"coverage save -onexit func_return_value.ucdb;run -all;exit;"

report:
	vcover report -details func_return_value.ucdb

clear:
	clear
