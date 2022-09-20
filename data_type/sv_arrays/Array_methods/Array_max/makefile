compile:
	vlib work;
	vlog -sv arraymax.sv

simulate:
	vsim tb -l arraymax.log -c -do "run -all; exit;"

all:
	make compile && make simulate

