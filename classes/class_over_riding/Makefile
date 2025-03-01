all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv over_riding_class.sv

simulate:
	vsim work.over_riding -l over_riding_class.log -c -do "run -all;exit;"

clear:
	clear
