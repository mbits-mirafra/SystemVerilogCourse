
all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv structn.sv

simulate:
		vsim struct1 -l structn.log -c -do "run -all;quit;"

clear:
	clear
