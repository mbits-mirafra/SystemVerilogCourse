all:
	rm -rf fork_join_any.log
	rm -rf work
	clear
	vlib work
	vlog -sv fork_join_any.sv && vsim work.fork_join_any -l fork_join_any.log -c -do "run -all;quit;"

compile:
	vlib work
	vlog -sv fork_join_any.sv

simulate:
	vsim work.fork_join_any -l fork_join_any.log -c -do "run -all;quit;"

clear:
	rm -rf fork_join_any.log
	rm -rf work
	clear
