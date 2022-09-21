compile:
			vlib work;
			vlog -sv implication_ifelse.sv

simulate :
			vsim top -l implication_ifelse.sv.log -c -do "run -all;exit;"

all:
			 vlib work;
			 vlog -sv implication_ifelse.sv
			 vsim top -l implication_ifelse.sv.log -c -do "run -all;exit;"
