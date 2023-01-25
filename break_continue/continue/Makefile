compile:
		vlib work;
			vlog -sv continue.sv

simulate :
		vsim continue_sv -l continue_sv_op.log -c -do "run -all;exit;"

all:
		vlib work;
		vlog -sv continue.sv
		vsim continue_sv -l continue_sv_op.log -c -do "run -all;exit;"
