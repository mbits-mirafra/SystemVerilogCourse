all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv wildcard_bin.sv

simulate:
	vsim -cvgperinstance wildcard_bin -l wildcard_bin.log -c -do \
		"coverage save -onexit wildcard_bin.ucdb;run -all;exit;"

report:
	vcover report -details wildcard_bin.ucdb

clear:
	clear;
