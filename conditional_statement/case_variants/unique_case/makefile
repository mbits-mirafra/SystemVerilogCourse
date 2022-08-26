compile:
	vlib work;
	vlog -sv unique_case.sv

simulate :
	vsim work.unique_case -l unique_case_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
