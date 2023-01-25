compile:
	vlib work;
	vlog -sv goto_repeat_bin.sv

simulate:
	vsim -cvgperinstance goto_repeat_bin -l goto_rrepeat_bin.log -c -do \
		"coverage save -onexit goto_repeat_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details goto_repeat_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv goto_repeat_bin.sv
	vsim -cvgperinstance goto_repeat_bin -l goto_repeat_bin.log -c -do \
		"coverage save -onexit goto_repeat_bin.ucdb;run -all;exit;"
	vcover report -details goto_repeat_bin.ucdb

