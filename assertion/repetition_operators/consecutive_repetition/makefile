all:
	make clear
	make simulate

simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all consecutive_repetition.sv -l consecutive_repetition.log

clear:
	clear
