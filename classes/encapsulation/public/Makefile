all:
	rm -rf pub_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv pub.sv && vsim pub -l pub_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv pub.sv

simulate:
	vsim pub -l pub_op.log -c -do "run -all;quit;"

clear:
	rm -rf pub_op.log
	rm -rf work
	clear
