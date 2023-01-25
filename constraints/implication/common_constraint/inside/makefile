compile:
			vlib work;
			vlog -sv inside_const.sv

simulate :
			vsim top -l inside_const.sv.log -c -do "run -all;exit;"

all:
			 vlib work;
			 vlog -sv inside_const.sv
			 vsim top -l inside_const.sv.log -c -do "run -all;exit;"
