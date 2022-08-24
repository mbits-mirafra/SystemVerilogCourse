all:
		make clear;make compile;make simulate

compile:
		vlib work
		vlog -sv fine_grain.sv

simulate:
		vsim fine_grain -l fine_grain.log -c -do "run -all;quit;"

clear:
		clear
		rm -rf fine_grain.log

