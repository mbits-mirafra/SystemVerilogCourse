compile:
		vlib work;
			vlog -sv case_without_default.sv

simulate :
		vsim top -l case_without_default.log -c -do "run -all;exit;"

all:
     vlib work;
		 vlog -sv case_without_default.sv
		 vsim top -l case_without_default.log -c -do "run -all;exit;"
