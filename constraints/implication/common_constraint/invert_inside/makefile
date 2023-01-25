compile:
			vlib work;
			vlog -sv invert_inside.sv

simulate :
			vsim top -l invert_inside.sv.log -c -do "run -all;exit;"

all:
			 vlib work;
			 vlog -sv invert_inside.sv
			 vsim top -l invert_inside.sv.log -c -do "run -all;exit;"
