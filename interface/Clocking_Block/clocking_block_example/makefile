compile:
	vlib work;
	vlog -sv top.sv

simulate:
	vsim top -l top.log -c -do "log -r /*; run -all;quit" -wlf waveform.wlf

all:
	make compile && make simulate
