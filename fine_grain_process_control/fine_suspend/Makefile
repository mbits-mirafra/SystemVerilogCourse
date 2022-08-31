all:
	rm -rf fine_suspend.log
	rm -rf work
	clear
	vlib work
	vlog -sv fine_suspend.sv &&  vsim fine_suspend -l fine_suspend.log -c -do "run -all;quit;"
	#make clear;make compile;make simulate

compile:
	vlib work
	vlog -sv fine_suspend.sv

simulate:
	vsim fine_suspend -l fine_suspend.log -c -do "run -all;quit;"

clear:
	rm -rf fine_suspend.log
	rm -rf work
	clear
