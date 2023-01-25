compile:
			vlib work;
simulate:
			vsim mod -l check_randomization_output.log -c -do "run -all; exit;"
all:
			vlib work;
			vlog -sv check_randomization_code.sv
			vsim mod -l check_randomization_output.log -c -do "run -all; exit;"
