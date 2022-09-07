compile:
		vlib work;
			vlog -sv unique_case_default.sv

simulate :
		vsim top -l unique_case_default_op.log -c -do "run -all;exit;"

all:
		 vlib work;
		 vlog -sv unique_case_default.sv
		 vsim top -l unique_case_default_op.log -c -do "run -all;exit;"
