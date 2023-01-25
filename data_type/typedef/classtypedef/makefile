
all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv classtypedef.sv

simulate:
		vsim typedefclass -l classtypedef.log -c -do "run -all;quit;"

clear:
	clear

