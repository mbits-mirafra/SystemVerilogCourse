all:
	  make clear;make compile;make simulate

compile:
	  vlib work
		vlog -sv fine_await.sv

simulate:
	  vsim fine_await -l fine_await.log -c -do "run -all;quit;"

clear:
	  clear
		rm -rf fine_await.log
