all:
	rm -rf work
	rm -rf events.log
	vlib work
	clear
	vlog -sv event.sv
	vsim work.events -l events.log -c -do "run -all;exit;"	

compile:
	rm -rf work
	rm -rf events.log
	clear
	vlib work
	vlog -sv events.sv

simulate :
	vsim work.events -l events.log -c -do "run -all;exit;"

clear:
	rm -rf work
	rm -rf events.log
	clear
