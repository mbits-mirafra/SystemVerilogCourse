all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv case_without_default.sv

simulate :
	vsim top -l case_without_default.log -c -do "run -all;exit;"

clear:
	clear
