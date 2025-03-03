all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv polymorphism.sv

simulate:
	vsim work.polymorphism -l polymorphism.log -c -do "run -all;exit;"

clear:
	clear
