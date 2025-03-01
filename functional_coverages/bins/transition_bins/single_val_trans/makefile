all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv single_val_trans_bin.sv

simulate:
	vsim -cvgperinstance single_val_trans_bin -l single_val_trans_bin.log -c -do \
		"coverage save -onexit single_val_trans_bin.ucdb;run -all;exit;"

report:
	vcover report -details single_val_trans_bin.ucdb

clear:
	clear;

