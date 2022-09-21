compile:
			vlib work;
			vlog -sv wighted_distribution.sv

simulate :
			vsim top -l weighted_distribution.sv.log -c -do "run -all;exit;"

all:
			 vlib work;
			 vlog -sv weighted_distribution.sv
			 vsim top -l weighted_distribution.sv.log -c -do "run -all;exit;"
