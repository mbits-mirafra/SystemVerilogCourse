
all:
		make clear;make compile;make simulate

compile:
		vlog -sv union-unpack.sv

simulate:
		vsim union_type -l union_unpack.log -c -do "run -all;quit;"

clear:
	clear

