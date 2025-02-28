all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv randomization.sv 

simulate:
	vsim randomization -l randomization_log.log -c -do "run -all;exit;"

clear:
	clear
