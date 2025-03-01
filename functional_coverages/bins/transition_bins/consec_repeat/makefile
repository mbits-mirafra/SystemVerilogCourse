all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv consec_repeat_bin.sv

simulate:
	vsim -cvgperinstance consec_repeat_bin -l consec_repeat_bin.log -c -do \
		"coverage save -onexit consec_repeat_bin.ucdb;run -all;exit;"

report:
	vcover report -details consec_repeat_bin.ucdb

clear:
	clear;

