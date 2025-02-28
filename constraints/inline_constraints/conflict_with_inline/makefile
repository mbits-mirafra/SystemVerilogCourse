all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv conflict_with_inline.sv 

simulate:
	vsim conflict_with_inline -l conflict_with_inline_log.log -c -do "run -all;exit;"

clear:
	clear
