compile:
		vlib work;
			vlog -sv break.sv

simulate :
		vsim work.break_sv -l break_op.log -c -do "run -all;exit;"

all:
	  vlib work;
	  vlog -sv break.sv
	  vsim work.break_sv -l break_op.log -c -do "run -all;exit;"
