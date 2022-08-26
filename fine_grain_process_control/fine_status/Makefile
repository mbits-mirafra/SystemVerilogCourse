all:
	  make clear;make compile;make simulate

compile:
	  vlib work
		vlog -sv fine_status.sv

simulate:
	  vsim fine_status -l fine_status.log -c -do "run -all;quit;"

clear:
	  clear
		rm -rf fine_status.log
