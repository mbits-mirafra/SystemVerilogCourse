compile :
	vlib work;
	vlog -sv cvgrp_cross.sv

simulate: 
	    vsim -cvgperinstance cvgrp_cross -l cvgrp_cross.log -c -do \
				"coverage save -onexit cross.ucdb;run -all;exit;"

report :
			vcover report -details cross.ucdb

all :
		clear;
		  vlib work;
	    vlog -sv cvgrp_cross.sv
	    vsim -cvgperinstance cvgrp_cross -l cvgrp_cross.log -c -do \
				"coverage save -onexit cross.ucdb;run -all;exit;"
			vcover report -details cross.ucdb



