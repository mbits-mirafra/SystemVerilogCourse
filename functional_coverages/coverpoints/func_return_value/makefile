compile:
	vlib work;
	vlog -sv func_return_value.sv

simulate :
	vsim -cvgperinstance work.func_return_value -l func_return_value_log.log -c -do "coverage save -onexit func_return_value_report.ucdb;run -all;exit;"

report :
	vcover report -details func_return_value.ucdb

all:
	vlib work;
	vlog -sv func_return_value.sv
	vsim -cvgperinstance work.func_return_value -l func_return_value_log.log -c -do "coverage save -onexit func_return_value_report.ucdb;run -all;exit;"
	vcover report -details func_return_value_report.ucdb
