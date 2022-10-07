compile :
				vlib work;
				vlog -sv cvgrp_start_stop.sv

simulate:
	    vsim -cvgperinstance cvgrp_start_stop -l cvgrp_start_stop.log -c -do \
				"coverage save -onexit start_stop.ucdb;run -all;exit;"

report :
			vcover report -details start_stop.ucdb

all :
		clear;

				vlib work;
				vlog -sv cvgrp_start_stop.sv
	      vsim -cvgperinstance cvgrp_start_stop -l cvgrp_start_stop.log -c -do \
					"coverage save -onexit start_stop.ucdb;run -all;exit;"
				vcover report -details start_stop.ucdb
