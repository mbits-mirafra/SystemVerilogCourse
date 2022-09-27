all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv code.sv interface.sv test.sv top.sv

simulate:
		vsim top -l code.log -c -do "run -all;quit;"

clear:
		clear
