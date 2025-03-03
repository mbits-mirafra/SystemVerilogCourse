all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv sema_exm3.sv

simulate:
	vsim semaphore_exa_get_try -l sema_exm3.log -c -do "run -all;quit;"

clear:
	clear

