
compile:
	vlib work;
	vlog -sv fulladder.sv interface.sv test.sv driver.sv top.sv

simulate:
	vsim top -l top.log -c -do "run -all; exit;"

all:
	make compile && make simulate

