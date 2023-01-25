compile :
	vlib work;
	vlog -sv cross_var.sv

simulate: 
	    vsim -cvgperinstance cross_var -l cross_var.log -c -do \
				"coverage save -onexit cross_var.ucdb;run -all;exit;"

report :
			vcover report -details cross_var.ucdb

all :
		clear;
	    vlib work;
	    vlog -sv cross_var.sv
	    vsim -cvgperinstance cross_var -l cross_var.log -c -do \
				"coverage save -onexit cross_var.ucdb;run -all;exit;"
			vcover report -details cross_var.ucdb


