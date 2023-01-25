compile :
				vlib work;
				vlog -sv options.sv

simulate:
	    vsim -cvgperinstance options -l options.log -c -do \
				"coverage save -onexit options.ucdb;run -all;exit;"

report :
			vcover report -details options.ucdb

all :
		clear;
				vlib work;
				vlog -sv options.sv
	    vsim -cvgperinstance options -l options.log -c -do \
				"coverage save -onexit options.ucdb;run -all;exit;"
			vcover report -details options.ucdb


