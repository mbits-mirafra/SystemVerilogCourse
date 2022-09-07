compile:
		vlib work
			vlog -sv unique_case2.sv

simulate :
		vsim top -l unique2_case_op.log -c -do "run -all;exit;"

all:
		 vlib work
		 vlog -sv unique_case2.sv
		 vsim top -l unique2_case_op.log -c -do "run -all;exit;"
