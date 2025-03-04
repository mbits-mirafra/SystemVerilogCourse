all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv sro_pkg.sv

simulate:
	vsim pkg_exm -l sro_pkg.log -c -do "run -all;exit;"

clear:
	clear
