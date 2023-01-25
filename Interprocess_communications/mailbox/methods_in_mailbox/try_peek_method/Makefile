all:
	rm -rf try_peek_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv try_peek.sv && vsim tb -l try_peek_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv try_peek.sv

simulate:
	vsim tb -l try_peek_op.log -c -do "run -all;quit;"

clear:
	rm -rf try_peek_op.log
	rm -rf work
	clear
