all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv cvgrp_using_clk.sv

simulate:
	vsim -cvgperinstance cvgrp_using_clk -l cvgrp_clk.log -c -do \
				"coverage save -onexit cvgrp_using_clk.ucdb;run -all;exit;"

report:
	vcover report -details cvgrp_using_clk.ucdb

clear:
		clear;
