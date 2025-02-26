all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv fine_self.sv

simulate:
	vsim work.fine_self -l fine_self.log -c -do "run -all;exit;"

clear:
	clear
