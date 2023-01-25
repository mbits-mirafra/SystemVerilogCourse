all:
	clear
	rm -rf work program.log
	vlib work
	vlog program_block.sv
	vsim DUT TB_using_Module TB_using_Program -l program.log -c -do "run -all;quit;"

compile:
	rm -rf work program.log
	vlib work
	vlog program_block.sv

simulate:
	vsim DUT TB_using_Module TB_using_Program -l program.log -c -do "run -all;quit;"

clear:
	clear
	rm -rf work program.log
