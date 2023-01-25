compile:
	vlib work;
	vlog -sv func_pass_by_ref.sv

simulate :
	vsim work.func_pass_by_ref -l func_pass_by_ref_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv func_pass_by_ref.sv
	vsim work.func_pass_by_ref -l func_pass_by_ref_log.log -c -do "run -all;exit;"
