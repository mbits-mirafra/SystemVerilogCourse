compile:
		vlib work;
			vlog -sv case_range.sv

simulate :
		vsim top -l case_range_op.log -c -do "run -all;exit;"

all:
		 vlib work;
	   vlog -sv case_range.sv
		 vsim top -l case_range_op.log -c -do "run -all;exit;"
