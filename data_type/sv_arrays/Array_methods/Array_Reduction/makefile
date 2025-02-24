all:
	make compile && make simulate

compile:
	vlib work;
	vlog -sv arrayreduction.sv

simulate:
	vsim array_reduction -l array_reduction.log -c -do "run -all; exit;"

