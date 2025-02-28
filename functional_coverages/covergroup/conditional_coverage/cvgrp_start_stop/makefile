all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv cvgrp_start_stop.sv

simulate:
	vsim -cvgperinstance cvgrp_start_stop -l cvgrp_start_stop.log -c -do \
				"coverage save -onexit start_stop.ucdb;run -all;exit;"

report:
	vcover report -details start_stop.ucdb

clear:
	clear;
