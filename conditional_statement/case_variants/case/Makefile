compile:
		vlib work;
			vlog -sv case.sv

simulate :
		vsim top -l case.sv.log -c -do "run -all;exit;"

all:
		 vlib work;
		 vlog -sv case.sv
		 vsim top -l case.sv.log -c -do "run -all;exit;"
