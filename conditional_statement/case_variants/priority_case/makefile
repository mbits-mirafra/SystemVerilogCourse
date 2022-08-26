compile:
	vlib work;
	vlog -sv priority_case.sv

simulate :
	vsim priority_case -l priority_case_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
