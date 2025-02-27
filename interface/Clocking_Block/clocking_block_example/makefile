all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv top.sv

simulate:
	vsim top -l clocking_block.log -c -do "log -r /*; run -all;exit;" -wlf waveform.wlf

clear:
	clear
