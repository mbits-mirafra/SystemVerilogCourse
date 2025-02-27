all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv and_gate.sv test.sv interface.sv top.sv

simulate:
	vsim top -l modport.log -c -do "run -all;exit;"

clear:
	clear
