
all:
		make clear;make compile;make simulate 

simulate:
		vcs -V -R -full64 -sverilog +v2k -debug_access +all andgate.sv test.sv -l disable.log
	

clear:
		clear
