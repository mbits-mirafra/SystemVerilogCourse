compile:
	vlib work;
	vlog -sv single_val_trans_bin.sv

simulate:
	vsim -cvgperinstance single_val_trans_bin -l single_val_trans_bin.log -c -do \
		"coverage save -onexit single_val_trans_bin.ucdb;run -all;exit;"

open_ucdb:
	vcover report -details single_val_trans_bin.ucdb

all:
	clear;
	vlib work;
	vlog -sv single_val_trans_bin.sv
	vsim -cvgperinstance single_val_trans_bin -l single_val_trans_bin.log -c -do \
		"coverage save -onexit single_val_trans_bin.ucdb;run -all;exit;"
	vcover report -details single_val_trans_bin.ucdb

