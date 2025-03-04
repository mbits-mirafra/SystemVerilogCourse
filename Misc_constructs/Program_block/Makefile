all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv program_block.sv

simulate:
	vsim DUT TB_using_Module TB_using_Program -l program_block.log -c -do "run -all;exit;"

clear:
	clear
