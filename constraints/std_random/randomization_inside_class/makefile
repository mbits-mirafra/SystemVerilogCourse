compile:
		vlib work;
		vlog -sv class_std_rand.sv 

simulate:
		vsim tb -l class_std_rand_log.log -c -do "run -all; exit;"

all:

		vlib work;
		vlog -sv class_std_rand.sv 
		vsim tb -l class_std_rand_log.log -c -do "run -all; exit;"


