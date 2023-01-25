compile:
	vlib work;
	vlog -sv multi_packed.sv

simulate:
	vsim multi_packed -l multi_packed.log -c -do "log -r /*; add wave -r /*; run -all;quit;" -wlf waveform.wlf

all:
	make clear;make compile;make simulate

clear:
	clear

