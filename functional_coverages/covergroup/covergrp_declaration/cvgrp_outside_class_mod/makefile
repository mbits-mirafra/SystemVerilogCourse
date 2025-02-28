all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv cvgrp_outside_class_mod.sv

simulate:
	vsim -cvgperinstance outside -l cvgrp_outside.log -c -do \
				"coverage save -onexit outside.ucdb;run -all;exit;"

report:
	vcover report -details outside.ucdb

clear:
		clear;

