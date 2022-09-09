compile:
	vlib work;
	vlog -sv design.sv interface.sv tb.sv top.sv

simulate:
	vsim top -l modport.log -c -do "run -all; exit;"

all:
	make clear;
	make compile;
	make simulate;

clear:
	clear
