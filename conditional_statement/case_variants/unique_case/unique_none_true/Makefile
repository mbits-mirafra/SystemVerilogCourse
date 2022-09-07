compile:
		vlib work;
			vlog -sv unique_case.sv

simulate :
		vsim top -l unique_case_op.log -c -do "run -all;exit;"

all:
		 vlib work;
		 vlog -sv unique_case.sv
		 vsim top -l unique_case_op.log -c -do "run -all;exit;"
