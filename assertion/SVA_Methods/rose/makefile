all:
	make clear
	make simulate

simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access +all rose.sv -l rose.log

clear:
	clear
