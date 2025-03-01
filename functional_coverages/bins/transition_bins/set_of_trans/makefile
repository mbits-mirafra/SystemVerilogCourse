all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv set_of_trans_bin.sv

simulate:
	vsim -cvgperinstance set_of_trans_bin -l set_of_trans_bin.log -c -do \
		"coverage save -onexit set_of_trans_bin.ucdb;run -all;exit;"

report:
	vcover report -details set_of_trans_bin.ucdb

clear:
	clear;
