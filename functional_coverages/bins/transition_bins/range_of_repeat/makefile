compile:
	vlib work;
	vlog -sv range_of_repeat_bin.sv

simulate:
	vsim -cvgperinstance -range_of_repeat_bin -l range_of_repeat_bin.log  -c -do \
		"coverage save -onexit range_of_repeat_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details range_of_repeat_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv range_of_repeat_bin.sv
	vsim -cvgperinstance range_of_repeat_bin -l range_of_repeat_bin.log -c -do \
		"coverage save -onexit range_of_repeat_bin.ucdb;run -all;exit;"
	vcover report -details range_of_repeat_bin.ucdb

