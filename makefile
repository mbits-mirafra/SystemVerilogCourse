compile:
	vlib work;
	vlog -sv if_else.sv

simulate:
	vsim if_else  -c -do "run -all; exit;"

all:
	make compile && make simulate

