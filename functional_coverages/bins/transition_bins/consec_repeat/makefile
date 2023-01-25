compile:
	vlib work;
	vlog -sv consec_repeat_bin.sv

simulate:
	vsim -cvgperinstance consec_repeat_bin -l consec_repeat_bin.log -c -do \
		"coverage save -onexit consec_repeat_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details consec_repeat_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv consec_repeat_bin.sv
	vsim -cvgperinstance consec_repeat_bin -l consec_repeat_bin.log -c -do \
		"coverage save -onexit consec_repeat_bin.ucdb;run -all;exit;"
	vcover report -details consec_repeat_bin.ucdb

