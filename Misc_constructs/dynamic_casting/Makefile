all:
	rm -rf work
	clear
	vlib work;
	vlog -sv dynamic_casting.sv && vsim casting -l dynamic_casting.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv dynamic_casting.sv

simulate:
	vsim casting -l dynamic_casting.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear

