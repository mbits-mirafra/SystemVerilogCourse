all:
	rm -rf work
	clear
	vlib work;
	vlog -sv static_method.sv && vsim static_method -l static_method.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv static_method.sv

simulate:
	vsim static_method -l static_method.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear

