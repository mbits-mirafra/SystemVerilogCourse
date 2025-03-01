all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv range_of_repeat_bin.sv

simulate:
	vsim -cvgperinstance range_of_repeat_bin -l range_of_repeat_bin.log  -c -do \
		"coverage save -onexit range_of_repeat_bin.ucdb;run -all;exit;"

report:
	vcover report -details range_of_repeat_bin.ucdb

clear:
	clear;
