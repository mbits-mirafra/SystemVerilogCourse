
simulate:
			vcs -V -R -full64 -sverilog +v2k -debug_access + all formal_argument.sv formal_argument.log

waveform:
	nWave waveform.vcd

all:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all formal_argument.sv -l formal_argument.log
	nWave waveform.vcd

