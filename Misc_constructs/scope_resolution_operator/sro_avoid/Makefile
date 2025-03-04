all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv sro_avoid.sv

simulate:
	vsim pkg_exm -l sro_avoid.log -c -do "run -all;exit;"

clear:
	clear
