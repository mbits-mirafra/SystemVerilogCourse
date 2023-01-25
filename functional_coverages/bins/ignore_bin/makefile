compile:
	vlib work;
	vlog -sv ignore_bin.sv

simulate:
	vsim -cvgperinstance ignore_bin -l ignore_bin.log -c -do \
		"coverage save -onexit ignore_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details ignore_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv ignore_bin.sv
	vsim -cvgperinstance ignore_bin -l ignore_bin.log -c -do \
		"coverage save -onexit ignore_bin.ucdb;run -all;exit;"
	vcover report -details ignore_bin.ucdb

