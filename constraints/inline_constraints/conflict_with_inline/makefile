compile:
	vlib work;
		vlog -sv conflict_with_inline.sv 

simulate:
	vsim conflict_with_inline -l conflict_with_inline_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog -sv conflict_with_inline.sv
	vsim conflict_with_inline -l conflict_with_inline_log.log -c -do "run -all;exit;"
