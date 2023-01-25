compile :
				vlib work;
				vlog -sv cvgrp_inside_mod.sv

simulate:
	    vsim -cvgperinstance cvgrp_inside_mod -l cvgrp_inside_mod.log  -c -do \
				"coverage save -onexit inside_mod.ucdb;run -all;exit;"

report :
			vcover report -details inside_mod.ucdb

all :
		clear;
				vlib work;
				vlog -sv cvgrp_inside_mod.sv
	      vsim -cvgperinstance cvgrp_inside_mod -l cvgrp_inside_mod.log  -c -do \
					"coverage save -onexit inside_mod.ucdb;run -all;exit;" 
				vcover report -details inside_mod.ucdb


