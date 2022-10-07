compile :
				vlib work;
				vlog -sv cvgrp_iff.sv

simulate:
	    vsim -cvgperinstance cvgrp_iff -l cvgrp_iff.log -c -do \
				"coverage save -onexit iff.ucdb;run -all;exit;"

report :
			vcover report -details iff.ucdb

all :
		clear;
	  vlib work;
		vlog -sv cvgrp_iff.sv
	  vsim -cvgperinstance cvgrp_iff -l cvgrp_iff.log -c -do \
			"coverage save -onexit iff.ucdb;run -all;exit;"
		vcover report -details iff.ucdb




