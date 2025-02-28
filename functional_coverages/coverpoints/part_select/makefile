all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv part_select.sv

simulate:
	vsim -cvgperinstance work.part_select -l part_select_log.log -c -do \
		"coverage save -onexit part_select.ucdb;run -all;exit;"

report:
	vcover report -details part_select.ucdb

clear:
	clear
