all:
	  rm -rf fine_await.log
		rm -rf work
		clear
		vlib work
		vlog -sv fine_await.sv && vsim fine_await -l fine_await.log -c -do "run -all;quit;"
		#make clear;make compile;make simulate

compile:
	  vlib work
		vlog -sv fine_await.sv

simulate:
	  vsim fine_await -l fine_await.log -c -do "run -all;quit;"

clear:
		rm -rf fine_await.log
		rm -rf work
		clear
