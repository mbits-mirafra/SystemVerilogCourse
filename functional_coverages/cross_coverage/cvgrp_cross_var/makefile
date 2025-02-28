
all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv cross_var.sv

simulate: 
	vsim -cvgperinstance cross_var -l cross_var.log -c -do \
				"coverage save -onexit cross_var.ucdb;run -all;exit;"

report:
	vcover report -details cross_var.ucdb

clear:
	clear;


