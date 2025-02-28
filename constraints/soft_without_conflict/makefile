all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv soft_without_conflict.sv

simulate:
	vsim soft_without_conflict  -l soft_without_conflict_output.log -c -do "run -all; exit;"

clear:
	clear
