
compile :
				vlib work;
				vlog -sv cvgrp_using_clk.sv

simulate:
	    vsim -cvgperinstance cvgrp_using_clk -l cvgrp_clk.log -c -do \
				"coverage save -onexit cvgrp_using_clk.ucdb;run -all;exit;"

report :
			vcover report -details cvgrp_using_clk.ucdb

all :
		clear;
				vlib work;
				vlog -sv cvgrp_using_clk.sv
	      vsim -cvgperinstance cvgrp_using_clk -l cvgrp_clk.log -c -do \
			 	"coverage save -onexit cvgrp_using_clk.ucdb;run -all;exit;"
			  vcover report -details cvgrp_using_clk.ucdb


