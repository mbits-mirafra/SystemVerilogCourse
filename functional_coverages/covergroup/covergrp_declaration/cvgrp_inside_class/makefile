compile :
				vlib work;
				vlog -sv cvgrp_inside_class.sv

simulate:
	    vsim -cvgperinstance cvgrp_inside_class -l cvgrp_inside_class.log -c -do \
				"coverage save -onexit inside_class.ucdb;run -all;exit;"

report :
			vcover report -details inside_class.ucdb

all :
		clear;
				vlib work;
				vlog -sv cvgrp_inside_class.sv
	      vsim -cvgperinstance cvgrp_inside_class -l cvgrp_inside_class.log -c -do \
					"coverage save -onexit inside_class.ucdb;run -all;exit;"
		  	vcover report -details inside_class.ucdb


