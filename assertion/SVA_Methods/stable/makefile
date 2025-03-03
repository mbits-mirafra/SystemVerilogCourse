all:
	make clear
	make simulate

simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access +all stable.sv -l stable.log

clear:
	clear
