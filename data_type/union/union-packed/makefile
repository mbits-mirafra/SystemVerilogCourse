
all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv unionpack.sv

simulate:
		vsim unionpacked  -l unionpack.log -c -do "run -all;quit;"

clear:
	clear
