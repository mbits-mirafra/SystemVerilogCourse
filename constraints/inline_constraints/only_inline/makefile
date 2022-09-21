compile:
	vlib work;
		vlog -sv only_inline.sv 

simulate:
	vsim only_inline -l only_inline_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv only_inline.sv
	vsim only_inline -l only_inline_log.log -c -do "run -all;exit;"
