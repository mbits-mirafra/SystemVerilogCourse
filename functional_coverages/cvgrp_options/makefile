all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv options.sv

simulate:
	vsim -cvgperinstance tb_option_cp -l options.log -c -do \
		"coverage save -onexit options.ucdb;run -all;exit;"

report:
	vcover report -details options.ucdb

clear:
	clear;


