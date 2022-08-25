compile:
	vlib work;
	vlog -sv array.sv

simulate:
	vsim array_find -l arrayfind.log -c -do "run -all; exit;"

all:
	make compile && make simulate


