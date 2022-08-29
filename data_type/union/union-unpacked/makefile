
all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv union-unpack.sv

simulate:
		vsim union1 -l union-unpack.log -c -do "run -all;quit;"

clear:
	clear

