all:
	rm -rf work
	clear
	vlib work;
	vlog -s virtual_function.sv && vsim virt_fun -l virtual_function.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv virtual_function.sv

simulate:
	vsim virt_fun -l virtual_function.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
