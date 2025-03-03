all:
	make clear
	make simulate

simulate:
	vcs -V -R -full64 -sverilog +v2k -debug_access+all variable_delay.sv -l variable_delay.log

clear:
	clear
