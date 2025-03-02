all:
	make clear
	make simulate

simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all formal_argument.sv -l formal_argument.log

clear:
	clear
