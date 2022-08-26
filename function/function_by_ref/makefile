compile:
	vlib work;
	vlog -sv function_by_ref.sv

simulate :
	vsim work.func_by_ref -l func_by_ref_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
