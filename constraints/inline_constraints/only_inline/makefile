all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv only_inline.sv 

simulate:
	vsim only_inline -l only_inline_log.log -c -do "run -all;exit;"

clear:
	clear
