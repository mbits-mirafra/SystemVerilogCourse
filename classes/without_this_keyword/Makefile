all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv without_this.sv

simulate:
	vsim work.check_electricity -l without_this.log -c -do "run -all;exit;"

clear:
	clear
