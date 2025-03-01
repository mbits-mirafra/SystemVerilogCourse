all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv static_properties.sv

simulate:
	vsim work.static_properties -l static_properties.log -c -do "run -all;exit;"

clear:
	clear
