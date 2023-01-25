compile:
	vlib work;
	vlog -sv sequence_of_trans_bin.sv

simulate:
	vsim -cvgperinstance -sequence_of_trans_bin -l sequence_of_trans_bin.log -c -do \
		"coverage save -onexit sequence_of_trans_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details sequence_of_trans_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv sequence_of_trans_bin.sv
	vsim -cvgperinstance sequence_of_trans_bin -l sequence_of_trans_bin.log  -c -do \
		"coverage save -onexit sequence_of_trans_bin.ucdb;run -all;exit;"
	vcover report -details sequence_of_trans_bin.ucdb

