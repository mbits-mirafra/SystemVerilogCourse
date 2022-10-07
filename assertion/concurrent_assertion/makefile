
compile:
	vlib work;
	vlog -sv design.sv test.sv

simulate:
	vsim  AND_Gate_tb -l assertion.log -c -do "run -all;quit;"

all:
	vlib work;
	vlog -sv design.sv test.sv 
	vsim  AND_Gate_tb -l assertion.log -c -do "run -all;quit;"
clear:
	clear
