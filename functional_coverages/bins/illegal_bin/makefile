compile:
	vlib work;
	vlog -sv illegal_bin.sv

simulate:
	vsim -cvgperinstance illegal_bin -l illegal_bin.log -c -do \
		"coverage save -onexit illegal_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details illegal_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv illegal_bin.sv
	vsim -cvgperinstance illegal_bin -l illegal_bin.log -c -do \
		"coverage save -onexit illegal_bin.ucdb;run -all;exit;"
	vcover report -details illegal_bin.ucdb

