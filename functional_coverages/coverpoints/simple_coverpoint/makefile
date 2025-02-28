all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv cover_point.sv

simulate :
	vsim -cvgperinstance work.cover_point -l cover_point.log -c -do \
		"coverage save -onexit cover_point_report.ucdb;run -all;exit;"

report:
	vcover report -details cover_point_report.ucdb

clear:
	clear
