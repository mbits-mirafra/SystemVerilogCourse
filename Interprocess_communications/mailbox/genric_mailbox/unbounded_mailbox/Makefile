all:
	rm -rf unbound_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv unbound.sv && vsim tb -l unbound_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv unbound.sv

simulate:
	vsim tb -l unbound_op.log -c -do "run -all;quit;"

clear:
	rm -rf unbound_op.log
	rm -rf work
	clear
