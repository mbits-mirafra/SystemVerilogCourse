all:

	rm -rf work
	clear
	vlib work
	vlog -sv this.sv && vsim check_electricity -c -do "run -all;quit;"

compile:
		vlib work
		vlog -sv check_electricity.sv

simulate:
		vsim check_electricity -l this.log -c -do "run -all;quit;"

clear:
		
	rm -rf work
	clear
