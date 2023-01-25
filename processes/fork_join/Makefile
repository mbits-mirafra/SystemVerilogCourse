all:
	rm -rf fork_join.log
	rm -rf work
	clear
	vlib work;
	vlog -sv fork_join.sv && vsim sample -l fork_join.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv fork_join.sv

simulate:
	vsim sample -l fork_join.log -c -do "run -all;quit;"

clear:
	rm -rf fork_join.log
	rm -rf work
	clear

