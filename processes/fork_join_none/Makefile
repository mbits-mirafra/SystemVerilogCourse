all:
	rm -rf fork_join_none.log
	rm -rf work 
	clear
	vlib work
	vlog -sv fork_join_none.sv && vsim work.fork_join_none -l fork_join_none.log -c -do "run -all;quit;"
	#make clear;make compile;make simulate;

compile:
	vlib work
	vlog -sv fork_join_none.sv

simulate:
	vsim work.fork_join_none -l fork_join_none.log -c -do "run -all;quit;"

clear:
	rm -rf fork_join_none.log
	rm -rf work
	clear
