compile:
	vlib work;
	vlog -sv part_select.sv

simulation:
	vsim -cvgperinstance work.par_select -l part_select_log.log -c -do "coverage save -onexit part_select.ucdb;run -all;exit;"

report:
	vcover report -details part_select.ucdb

all:
	vlib work;
	vlog -sv part_select.sv
	vsim -cvgperinstance work.part_select -l part_select_log.log -c -do "coverage save -onexit part_select.ucdb;run -all;exit;"
	vcover report -details part_select.ucdb
