compile:
	vlib work;
	vlog -sv func_call_from_display.sv

simulate :
	vsim work.func_call_from_display -l func_call_from_display_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv func_call_from_display.sv
	vsim work.func_call_from_display -l func_call_from_display_log.log -c -do "run -all;exit;"
