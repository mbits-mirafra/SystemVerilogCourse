all:
	make clear;
	make compile;
	make simulate;
	make report;

compile:
	vlog -sv expression.sv

simulate :
	vsim -cvgperinstance work.expression -l expression.log -c -do "coverage save -onexit expression_report.ucdb;run -all;exit;"

report:
	vcover report -details expression_report.ucdb

clear:
	clear
