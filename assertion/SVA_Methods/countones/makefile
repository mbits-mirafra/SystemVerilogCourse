all:
	make clear
	make simulate

simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access +all countones.sv -l countones.log

clear:
	clear
