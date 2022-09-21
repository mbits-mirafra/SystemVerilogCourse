all:
		rm -rf work
		clear
	  vlib work
		vlog -sv super.sv && vsim super_example -c -do "run -all;quit;"

compile:
		vlib work
		vlog -sv super.sv

simulate:
		vsim super_example -l super.log -c -do "run -all;quit;"

clear:	
		rm -rf work
		clear
