
compile:
	vlib work;
	vlog -sv arrayorder.sv

simulate:
	vsim array_order -l array_order.log -c -do "run -all; exit;"

all:
	make compile && make simulate

