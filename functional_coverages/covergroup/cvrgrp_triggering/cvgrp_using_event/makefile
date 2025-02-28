all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv using_evnt.sv

simulate:
	vsim -cvgperinstance using_evnt -l using_evnt.log -c -do \
				"coverage save -onexit using_evnt.ucdb;run -all;exit;"

report:
	vcover report -details using_evnt.ucdb

clear:
	clear;
