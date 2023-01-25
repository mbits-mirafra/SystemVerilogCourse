all:
	rm -rf pvf_op.log
	rm -rf work 
	clear
	vlib work;
	vlog -sv pvf.sv && vsim pure_vir_fun_ex -l pvf_op.log -c -do "run -all;quit;"
							
compile:
	vlib work;
	vlog -sv pvf.sv

simulate:
	vsim pure_vir_fun_ex -l pvf_op.log -c -do "run -all;quit;"

clear:
	rm -rf pvf_op.log
	rm -rf work
	clear
