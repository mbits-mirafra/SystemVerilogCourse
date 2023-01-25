compile:
			vlib work;
			vlog -sv bidirectional_const.sv

simulate :
			vsim constraint_top -l bidirectional_const.sv.log -c -do "run -all;exit;"

all:
			 vlib work;
			 vlog -sv bidirectional_const.sv
			 vsim constraint_top -l bidirectional_const.sv.log -c -do "run -all;exit;"
