all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv repeat_code.sv

simulate:
	vsim work.repeat_code -l repeat_code_log.log -c -do "run -all;exit;"

clear:
	clear
