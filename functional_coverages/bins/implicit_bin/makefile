compile:
	vlib work;
	vlog -sv implicit_bin.sv

simulate:
	vsim -cvgperinstance implicit_bin -l implicit_bin.log -c -do \
		"coverage save -onexit implicit_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details implicit_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv implicit_bin.sv
	vsim -cvgperinstance implicit_bin -l implicit_bin.log -c -do \
		"coverage save -onexit implicit_bin.ucdb;run -all;exit;"
	vcover report -details implicit_bin.ucdb

