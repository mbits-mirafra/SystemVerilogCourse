
simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all design.sv test.sv -l assertion.log

waveform:
	nWave waveform.vcd

all:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all design.sv test.sv -l assertion.log
	nWave waveform.vcd
