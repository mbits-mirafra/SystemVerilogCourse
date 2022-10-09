all:
	rm -rf para_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv para_mailbox.sv && vsim tb -l para_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv bound.sv

simulate:
	vsim tb -l para_op.log -c -do "run -all;quit;"

clear:
	rm -rf para_op.log
	rm -rf work
	clear
