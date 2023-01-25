compile:
		vlib work;
		vlog -sv std_random.sv

simulate:
		vsim std_random -l std_random.log -c -do "run -all; exit;"

all:

		vlib work;
		vlog -sv std_random.sv
		vsim std_random -l std_random.log -c -do "run -all; exit;"


