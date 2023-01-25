all:
	rm -rf put_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv put.sv && vsim tb -l put_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv put.sv

simulate:
	vsim tb -l put_op.log -c -do "run -all;quit;"

clear:
	rm -rf put_op.log
	rm -rf work
	clear
