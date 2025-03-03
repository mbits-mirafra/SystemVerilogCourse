all:
	make clear
	make simulate

simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all goto_repetition.sv -l goto_repetition.log

clear:
	clear
