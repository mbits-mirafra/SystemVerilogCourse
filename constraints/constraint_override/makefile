compile:
			vlib work;
			vlog -sv overrding_code.sv 

simulate:
			vsim top -l overrding_output.log -c -do "run -all; exit;"

all:

			vlib work;	
			vlog -sv overrding_code.sv 
			vsim top -l overrding_output.log -c -do "run -all; exit;"

