all:
		rm -rf sema_exm2.log
		rm -rf work
		clear
		vlib work
		vlog -sv sema_exm2.sv && vsim semaphore_exm_2 -l sema_exm2.log -c -do "run -all;quit;"

compile:
		vlib work;
		vlog -sv sema_exm2.sv

simulate:
		vsim tb -l sema_exm2.log -c -do "run -all;quit;"

clear:
		rm -rf sema_exm2.log
		rm -rf work
		clear

