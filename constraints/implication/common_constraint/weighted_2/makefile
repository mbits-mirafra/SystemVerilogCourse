compile:
			vlib work;
			vlog -sv weighted_distribution2.sv

simulate :
			vsim top -l weighted_distribution2.sv.log -c -do "run -all;exit;"

all:
			 vlib work;
			 vlog -sv weighted_distribution2.sv
			 vsim top -l weighted_distribution2.sv.log -c -do "run -all;exit;"
