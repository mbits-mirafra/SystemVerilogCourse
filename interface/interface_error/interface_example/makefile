compile:
	vlib work;
	vlog -sv interface.sv test.sv interface_module.sv top.sv

simulate:
	vsim top -l interface.log -c -do "run -all; exit;"

all:
	vlib work;
	vlog -sv interface.sv test.sv interface_module.sv top.sv
	vsim top -l interface.log -c -do "run -all; exit;"

clear:
	clear
