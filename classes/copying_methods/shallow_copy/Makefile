all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv shallow_copy.sv

simulate:
	vsim work.shallow -l shallow_copy.log -c -do "run -all;exit;"

clear:
	clear
