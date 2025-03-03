all:
	make clear
	make simulate

simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all without_ended.sv -l without_ended.log

clear:
	clear
