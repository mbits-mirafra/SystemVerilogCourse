
all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv formal.sv

simulate:
		vsim formal_argument -l formal.log -c -do "run -all;quit;"

clear:
		clear

