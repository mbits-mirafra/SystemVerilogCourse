all:
	rm -rf inh_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv inh.sv && vsim inh_sam -l inh_op.log -c -do "run -all;quit;"
	

compile:
	vlib work;
	vlog -sv inh.sv

simulate:
	vsim -l inh_sam inh_op.log -c -do "run -all;quit;"

clear:
	rm -rf inh_op.log
	rm -rf work
	clear
