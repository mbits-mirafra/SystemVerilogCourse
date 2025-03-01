all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv abstract_class.sv

simulate:
	vsim work.abstract_class -l abstract_class.log -c -do "run -all;exit;"

clear:
	clear
