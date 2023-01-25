compile:
	vlib work;
	vlog -sv expression.sv

simulate :
	vsim -cvgperinstance work.expression -l expression.log -c -do "coverage save -onexit expression_report.ucdb;run -all;exit;"

report:
	vcover report -details expression_report.ucdb

all:
	vlib work;
	vlog -sv expression.sv
	vsim -cvgperinstance work.expression -l expression.log -c -do\
		"coverage save -onexit expression_report.ucdb;run -all;exit;"
	vcover report -details expression_report.ucdb
