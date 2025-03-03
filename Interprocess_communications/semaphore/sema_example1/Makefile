all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv sema_exm1.sv

simulate:
	vsim semaphore_example_1 -l sema_exm1.log -c -do "run -all;quit;"

clear:
	clear
				
