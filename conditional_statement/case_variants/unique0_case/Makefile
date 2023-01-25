compile:
		vlib work;
			vlog -sv unique0_case.sv

simulate :
		vsim top -l unique0_case_op.log -c -do "run -all;exit;"

all:
		vlib work;
	  vlog -sv unique0_case.sv
		vsim top -l unique0_case_op.log -c -do "run -all;exit;"
