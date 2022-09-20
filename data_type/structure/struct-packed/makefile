
all:
		make clear;make compile;make simulate

compile:
		vlib work;
			vlog -sv struct-packed.sv

simulate:
		vsim emp_info -l struct-packed.log -c -do "run -all;quit;"

clear:
	clear
