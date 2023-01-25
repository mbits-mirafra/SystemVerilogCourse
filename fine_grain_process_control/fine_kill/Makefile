all:
	rm -rf fine_kill.log
	rm -rf work 
	clear
	vlib work
	vlog -sv fine_kill.sv && vsim fine_kill -l fine_kill.log -c -do "run -all;quit;"	

compile:
	vlib work
	vlog -sv fine_kill.sv

simulate:
	vsim fine_kill -l fine_kill.log -c -do "run -all;quit;"

clear:
	rm -rf fine_kill.log
	rm -rf work
	clear
