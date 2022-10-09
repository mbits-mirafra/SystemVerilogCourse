all:
	rm -rf new_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv new_md.sv && vsim tb -l new_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv new_md.sv

simulate:
	vsim tb -l new_op.log -c -do "run -all;quit;"

clear:
	rm -rf new_op.log
	rm -rf work
	clear
