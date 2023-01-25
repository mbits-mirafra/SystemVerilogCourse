compile:
	vlib work;
	vlog -sv wildcard_bin.sv

simulate:
	vsim -cvgperinstance wildcard_bin -l wildcard_bin.log -c -do \
		"coverage save -onexit wildcard_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details wildcard_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv wildcard_bin.sv
	vsim -cvgperinstance wildcard_bin -l wildcard_bin.log -c -do \
		"coverage save -onexit wildcard_bin.ucdb;run -all;exit;"
	vcover report -details wildcard_bin.ucdb

