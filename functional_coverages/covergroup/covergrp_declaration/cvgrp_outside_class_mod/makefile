compile :
				vlib work;
				vlog -sv cvgrp_outside_class_mod.sv

simulate:
	    vsim -cvgperinstance outside -l cvgrp_outside.log -c -do \
				"coverage save -onexit outside.ucdb;run -all;exit;"

report :
			vcover report -details outside.ucdb

all :
		clear;
				vlib work;
				vlog -sv cvgrp_outside_class_mod.sv
	      vsim -cvgperinstance outside -l cvgrp_outside.log -c -do \
					"coverage save -onexit outside.ucdb;run -all;exit;"
		  	vcover report -details outside.ucdb


