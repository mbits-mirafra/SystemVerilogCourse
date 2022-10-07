
all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv variable.sv

simulate:
		vsim variable -l variable.log -c -do "run -all;quit;"

clear:
		clear

