compile :
				vlib work;
				vlog -sv using_evnt.sv

simulate:
	    vsim -cvgperinstance using_evnt -l using_evnt.log -c -do \
				"coverage save -onexit using_evnt.ucdb;run -all;exit;"

report :
			vcover report -details using_evnt.ucdb

all :
		clear;
				vlib work;
				vlog -sv using_evnt.sv
	      vsim -cvgperinstance using_evnt -l using_evnt.log -c -do \
				"coverage save -onexit using_evnt.ucdb;run -all;exit;"
			  vcover report -details using_evnt.ucdb


