compile :
				vlib work;
				vlog -sv cover_grp.sv

simulate:
	    vsim -cvgperinstance cover_grp -l cover_group.log -c -do "coverage save -onexit cover_group.ucdb;run -all;exit;"

report :
			vcover report -details cover_group.ucdb

all :
		clear;
				vlib work;
				vlog -sv cover_grp.sv
	      vsim -cvgperinstance cover_grp -l cover_group.log -c -do "coverage save -onexit cover_group.ucdb;run -all;exit;"
		  	vcover report -details cover_group.ucdb


