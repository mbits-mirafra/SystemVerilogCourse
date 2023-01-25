all:
	rm -rf num_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv num.sv && vsim tb -l num_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv num.sv

simulate:
	vsim tb -l num_op.log -c -do "run -all;quit;"

clear:
	rm -rf num_op.log
	rm -rf work
	clear
