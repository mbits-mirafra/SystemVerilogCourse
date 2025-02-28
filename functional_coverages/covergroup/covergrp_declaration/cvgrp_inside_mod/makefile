all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv cvgrp_inside_mod.sv

simulate:
	vsim -cvgperinstance cvgrp_inside_mod -l cvgrp_inside_mod.log  -c -do \
				"coverage save -onexit inside_mod.ucdb;run -all;exit;"

report:
	vcover report -details inside_mod.ucdb

clear:
		clear;


