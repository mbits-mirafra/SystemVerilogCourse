compile:
	vlib work;
	vlog -sv func_array_from_display.sv

simulate :
	vsim work.func_array_from_display -l func_array_from_display_log.log -c -do "run -all;exit;"

all:
	vlib work;
	vlog -sv func_array_from_display.sv
	vsim work.func_array_from_display -l func_array_from_display_log.log -c -do "run -all;exit;"
