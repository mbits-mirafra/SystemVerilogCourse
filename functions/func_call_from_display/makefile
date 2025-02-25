all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv func_call_from_display.sv

simulate:
	vsim work.func_call_from_display -l func_call_from_display_log.log -c -do "run -all;exit;"

clear:
	clear
