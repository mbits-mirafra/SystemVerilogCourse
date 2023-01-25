all:
	rm -rf peek_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv peek.sv && vsim tb -l peek_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv peek.sv

simulate:
	vsim tb -l peek_op.log -c -do "run -all;quit;"

clear:
	rm -rf peek_op.log
	rm -rf work
	clear
