all:
	make clear
	make simulate

simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all design.sv test.sv -l assertion.log

clear:
	clear
