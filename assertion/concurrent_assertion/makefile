
simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all design.sv

waveform:
	nWave waveform.vcd

all:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all design.sv
	nWave waveform.vcd
