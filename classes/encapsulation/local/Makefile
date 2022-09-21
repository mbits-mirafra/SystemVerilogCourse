all:
	rm -rf encap_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv local.sv && vsim encap -l encap_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv local.sv

simulate:
	vsim encap -l encap_op.log -c -do "run -all;quit;"

clear:
	rm -rf encap_op.log
	rm -rf work
	clear
