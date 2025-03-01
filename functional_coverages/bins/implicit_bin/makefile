all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv implicit_bin.sv

simulate:
	vsim -cvgperinstance implicit_bin -l implicit_bin.log -c -do \
		"coverage save -onexit implicit_bin.ucdb;run -all;exit;"

report:
	vcover report -details implicit_bin.ucdb

clear:
	clear;
