compile:
			vlib work;
			vlog -sv static_cons.sv

simulate :
			vsim top -l static_cons.sv.log -c -do "run -all;exit;"

all:
			 vlib work;
			 vlog -sv static_cons.sv
			 vsim top -l static_cons.sv.log -c -do "run -all;exit;"
