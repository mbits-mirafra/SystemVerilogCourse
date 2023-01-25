all:
	rm -rf get_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv get.sv && vsim tb -l get_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv get.sv

simulate:
	vsim tb -l get_op.log -c -do "run -all;quit;"

clear:
	rm -rf get_op.log
	rm -rf work
	clear
