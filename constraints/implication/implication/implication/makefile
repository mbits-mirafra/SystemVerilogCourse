compile:
			vlib work;
			vlog -sv implication_constraint.sv

simulate :
			vsim top -l implication_constraint.sv.log -c -do "run -all;exit;"

all:
			 vlib work;
			 vlog -sv implication_constraint.sv
			 vsim top -l implication_constraint.sv.log -c -do "run -all;exit;"
