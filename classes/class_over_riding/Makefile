all:
	rm -rf work
	clear
	vlib work;
	vlog -sv over_riding_class.sv && vsim over_riding -l over_riding_class.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv over-riding_class.sv

simulate:
	vsim over_riding -l over_riding_class.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
