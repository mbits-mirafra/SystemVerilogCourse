compile:
	vlib work;
	vlog -sv break_continue.sv

simulate :
	vsim work.break_continue -l break_continue_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
