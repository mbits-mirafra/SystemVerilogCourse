all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv driver.sv top.sv

simulate:
	vsim top -l virtual_interface.log -c -do "run -all;exit;"

clear:
	clear
