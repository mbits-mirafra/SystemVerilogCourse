all:
	rm -rf poly_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv poly.sv && vsim poly_ex -l poly_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv poly.sv

simulate:
	vsim poly_ex -l poly_op.log -c -do "run -all;quit;"

clear:
	rm -rf poly_op.log
	rm -rf work
	clear
