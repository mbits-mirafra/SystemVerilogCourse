compile:
	vlib work;
	vlog -sv case.sv

simulate :
	vsim work.case1 -l case_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
