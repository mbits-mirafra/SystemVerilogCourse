all:
	rm -rf try_get_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv try_get.sv && vsim tb -l try_get_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv try_get.sv

simulate:
	vsim tb -l try_get_op.log -c -do "run -all;quit;"

clear:
	rm -rf try_get_op.log
	rm -rf work
	clear
