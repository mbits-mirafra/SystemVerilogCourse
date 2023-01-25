compile:
	vlib work;
	vlog -sv explicit_bin.sv

simulate:
	vsim -cvgperinstance explicit_bin -l explicit_bin.log -c -do \
		"coverage save -onexit explicit_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details explicit_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv explicit_bin.sv
	vsim -cvgperinstance explicit_bin -l explicit_bin.log -c -do \
		"coverage save -onexit explicit_bin.ucdb;run -all;exit;"
	vcover report -details explicit_bin.ucdb

