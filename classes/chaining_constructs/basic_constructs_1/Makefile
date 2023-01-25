all:
	rm -rf chain_constructs.log
	rm -rf work
	clear
	vlib work;
	vlog -sv chain_constructs.sv && vsim basic_chain_construct -l chain_constructs.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv chain_constructs.sv

simulate:
	vsim basic_chain_construct -l chain_constructs.log -c -do "run -all;quit;"

clear:
	rm -rf chain_constructs.log
	rm -rf work
	clear

