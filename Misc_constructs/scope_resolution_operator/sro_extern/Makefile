all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv sro_extern.sv

simulate:
	vsim extern_exm -l sro_extern.log -c -do "run -all;exit;"

clear:
	clear
