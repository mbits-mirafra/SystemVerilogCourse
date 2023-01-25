all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv structtypedef.sv

simulate:
		vsim structtype -l structtypedef.log -c -do "run -all;quit;"

clear:
	clear

