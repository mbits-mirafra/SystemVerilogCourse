all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv if_elseif.sv

simulate:
	vsim if_elseif -l if_elseif_log.log -c -do "run -all; exit;"

clear:
	clear

