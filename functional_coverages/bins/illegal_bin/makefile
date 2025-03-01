all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv illegal_bin.sv

simulate:
	vsim -cvgperinstance illegal_bin -l illegal_bin.log -c -do \
		"coverage save -onexit illegal_bin.ucdb;run -all;exit;"

report:
	vcover report -details illegal_bin.ucdb

clear:
	clear;

