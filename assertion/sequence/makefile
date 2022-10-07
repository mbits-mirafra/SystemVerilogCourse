
all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv sequence.sv

simulate:
		vsim seq1 -l sequence.log -c -do "run -all;quit;"

clear:
		clear
