all:
	rm -rf bounded_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv bound.sv && vsim tb -l bound_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv bound.sv

simulate:
	vsim tb -l bound_op.log -c -do "run -all;quit;"

clear:
	rm -rf bound_op.log
	rm -rf work
	clear
