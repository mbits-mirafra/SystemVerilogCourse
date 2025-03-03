all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv sema_exm2.sv

simulate:
	vsim semaphore_exm_2 -l sema_exm2.log -c -do "run -all;quit;"

clear:
	clear

