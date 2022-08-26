compile:
			vlib work;
			vlog -sv if_else_ladder_code.sv

simulate:
			vsim if_else_ladder -l if_else_ladder_output.log -c -do "run -all; exit;"

all:
			make compile && make simulate
