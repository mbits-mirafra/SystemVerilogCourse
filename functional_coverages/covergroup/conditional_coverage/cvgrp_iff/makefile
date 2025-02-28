all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv cvgrp_iff.sv

simulate:
	vsim -cvgperinstance cvgrp_iff -l cvgrp_iff.log -c -do \
				"coverage save -onexit iff.ucdb;run -all;exit;"

report:
	vcover report -details iff.ucdb

clear:
	clear;




