all:
	make clear;
	make compile;
	make simulate;
	make report;

compile :
	vlog -sv cvgrp_cross.sv

simulate:
	vsim -cvgperinstance cvgrp_cross -l cvgrp_cross.log -c -do \
				"coverage save -onexit cross.ucdb;run -all;exit;"

report:
			vcover report -details cross.ucdb

clear:
		clear;



