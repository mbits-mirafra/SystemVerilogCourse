all:
		rm -rf sema_exm3.log
		rm -rf work
		clear
		vlib work;
		vlog -sv sema_exm3.sv && vsim semaphore_exa_get_try -l sema_exm3.log -c -do "run -all;quit;"

compile:
		vlib work;
		vlog -sv sema_exm3.sv

simulate:
		vsim semaphore_exa_get_try -l sema_exm3.log -c -do "run -all;quit;"

clear:
		rm -rf sema_exm3.log
		rm -rf work
		clear

