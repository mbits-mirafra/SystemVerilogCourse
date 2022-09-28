all:
	rm -rf abstract_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv abstract.sv && vsim abstract_ex -l abstract_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv abstract.sv

simulate:
	vsim abstract_ex -l abstract_op.log -c -do "run -all;quit;"

clear:
	rm -rf abstract_op.log
	rm -rf work
	clear
