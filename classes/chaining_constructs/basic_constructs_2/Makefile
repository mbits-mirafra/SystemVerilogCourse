all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv chain_constructs.sv

simulate:
	vsim work.chain_constructs -l chain_constructs.log -c -do "run -all;exit;"

clear:
	clear
