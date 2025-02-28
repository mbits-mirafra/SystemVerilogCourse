all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv implication_ifelse.sv

simulate:
	vsim top -l implication_ifelse.log -c -do "run -all;exit;"

clear:
	clear
