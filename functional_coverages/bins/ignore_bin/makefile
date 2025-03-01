all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv ignore_bin.sv

simulate:
	vsim -cvgperinstance ignore_bin -l ignore_bin.log -c -do \
		"coverage save -onexit ignore_bin.ucdb;run -all;exit;"

report:
	vcover report -details ignore_bin.ucdb

clear:
	clear;
