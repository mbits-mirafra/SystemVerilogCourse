compile:
			vlib work;
						vlog -sv while_basic.sv

simulate :
			vsim work.while_basic -l while_basic_log.log -c -do "run -all;exit;"

all:

			vlib work;
						vlog -sv while_basic.sv
			vsim work.while_basic -l while_basic_log.log -c -do "run -all;exit;"

