all:
		rm -rf wait_@.log
		rm -rf work
		clear
		vlib work
		vlog -sv wait_@.sv
		vsim wait_example -l wait_@.log -c -do "run -all;quit;"

compile:
		vlib work
		vlog -sv wait_@.sv

simulate:
		vsim wait_example -l wait_@.log -c -do "run -all;quit;"

clear:
		rm -rf handle.log
		rm -rf work
		clear

