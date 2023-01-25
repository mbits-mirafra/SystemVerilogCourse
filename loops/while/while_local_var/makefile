compile:
		vlib work;
			vlog -sv whil.sv

simulate :
		vsim work.while_simple -l while_variable_log.log -c -do "run -all;exit;"

all:

		vlib work;
			vlog -sv whil.sv
		vsim work.while_simple -l while_variable_log.log -c -do "run -all;exit;"

