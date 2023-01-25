all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv logic_file.sv

simulate:
		vsim logic_data -l logic_file.log -c -do "run -all;quit;"

clear:
	clear

