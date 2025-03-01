all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv sequence_of_trans_bin.sv

simulate:
	vsim -cvgperinstance sequence_of_trans_bin -l sequence_of_trans_bin.log -c -do \
		"coverage save -onexit sequence_of_trans_bin.ucdb;run -all;exit;"

report:
	vcover report -details sequence_of_trans_bin.ucdb

clear:
	clear

