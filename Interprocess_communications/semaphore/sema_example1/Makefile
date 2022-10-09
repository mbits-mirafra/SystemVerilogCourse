all:
		rm -rf sema_exm1.log
		rm -rf work
		clear
		vlib work;
		vlog -sv sema_exm1.sv && vsim semaphore_example_1 -l sema_exm1.log -c -do "run -all;quit;"

compile:
		vlib work;
		vlog -sv sema_exm1.sv

simulate:
		vsim semaphore_example_1 -l sema_exm1.log -c -do "run -all;quit;"

clear:
		rm -rf sema_exm1.log
		rm -rf work
		clear
				
