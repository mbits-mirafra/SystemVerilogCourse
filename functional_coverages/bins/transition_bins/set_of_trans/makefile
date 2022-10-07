compile:
	vlib work;
	vlog -sv set_of_trans_bin.sv

simulate:
	vsim -cvgperinstance set_of_trans_bin -l set_of_trans_bin set_of_trans_bin.log -c -do \
		"coverage save -onexit set_of_trans_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details set_of_trans_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv set_of_trans_bin.sv
	vsim -cvgperinstance set_of_trans_bin -l set_of_trans_bin.log -c -do \
		"coverage save -onexit set_of_trans_bin.ucdb;run -all;exit;"
	vcover report -details set_of_trans_bin.ucdb

