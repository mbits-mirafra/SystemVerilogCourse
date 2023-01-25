compile:
			vlib work;
			vlog -sv randomization_mode_code.sv

simulate:
			vsim randomization_mode -l randomization_mode_code_output.log -c -do "run -all; exit;"

all:
	    vlib work;
			vlog -sv randomization_mode_code.sv
			vsim randomization_mode -l randomization_mode_code_output.log -c -do "run -all; exit;"
