all:
	rm -rf work
	clear
	vlib work;
	vlog -sv static_properties.sv && vsim static_properties -l static_properties.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv static_properties.sv

simulate:
	vsim static_properties -l static_properties.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear

