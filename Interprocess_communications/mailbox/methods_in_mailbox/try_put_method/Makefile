all:
	rm -rf try_put_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv try_put.sv && vsim tb -l try_put_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv try_put.sv

simulate:
	vsim tb -l try_put_op.log -c -do "run -all;quit;"

clear:
	rm -rf try_put_op.log
	rm -rf work
	clear
