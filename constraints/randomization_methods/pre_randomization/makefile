all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv pre_randomization.sv 

simulate:
	vsim pre_randomization -l pre_randomization_log.log -c -do "run -all;exit;"

clear:
	clear
