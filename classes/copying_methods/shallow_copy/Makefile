all:
	rm -rf work
	clear
	vlib work;
	vlog -sv shallow_copy.sv && vsim shallow -l shallow_copy.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv shallow_copy.sv

simulate:
	vsim shallow -l shallow_copy.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear

