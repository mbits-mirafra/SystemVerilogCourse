
all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv enumtypedef.sv

simulate:
		vsim enumtype -l enumtypedef.log -c -do "run -all;quit;"

clear:
	clear
