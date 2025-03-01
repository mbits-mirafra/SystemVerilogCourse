all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv explicit_bin.sv

simulate:
	vsim -cvgperinstance explicit_bin -l explicit_bin.log -c -do \
		"coverage save -onexit explicit_bin.ucdb;run -all;exit;"

report:
	vcover report -details explicit_bin.ucdb

clear:
	clear;
