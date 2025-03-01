all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv goto_repeat_bin.sv

simulate:
	vsim -cvgperinstance goto_repeat_bin -l goto_rrepeat_bin.log -c -do \
		"coverage save -onexit goto_repeat_bin.ucdb;run -all;exit;"

report:
	vcover report -details goto_repeat_bin.ucdb

clear:
	clear;
