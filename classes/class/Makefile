all:
	rm -rf work
	clear
	vlib work
	vlog -sv class.sv && vsim check_electricity -c -do "run -all;quit;"

compile:
		vlib work
		vlog -sv class.sv

simulate:
		vsim check_electricity -l class.log -c -do "run -all;quit;"

clear:
		
			rm -rf work
			clear
