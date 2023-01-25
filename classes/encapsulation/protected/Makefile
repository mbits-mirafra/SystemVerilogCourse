all:
	rm -rf prot_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv prot.sv && vsim prot -l prot_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv prot.sv

simulate:
	vsim prot -l prot_op.log -c -do "run -all;quit;"

clear:
	rm -rf prot_op.log
	rm -rf work
	clear
