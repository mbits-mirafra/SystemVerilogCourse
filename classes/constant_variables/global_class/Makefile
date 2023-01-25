all:
	rm -rf work
	clear
	vlib work;
	vlog -sv global_class.sv && vsim global_class -l global_class.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv global_class.sv

simulate:
	vsim global_class -l global_class.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
