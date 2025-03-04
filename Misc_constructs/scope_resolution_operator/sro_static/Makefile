all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv sro_static.sv

simulate:
	vsim static_exm -l sro_static.log -c -do "run -all;exit;"

clear:
	clear
