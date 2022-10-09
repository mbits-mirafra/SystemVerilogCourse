all:
			rm -rf sro_extern.log
			rm -rf work
			clear
			vlib work;
			vlog -sv sro_extern.sv && vsim extern_exm -l sro_extern.log -c -do "run -all;quit;"

compile:
			vlib work;
			vlog -sv sro_extern.sv

simulate:
			vsim extern_exm -l sro_extern.log -c -do "run -all;quit;"

clear:
			rm -rf sro_extern.log
			rm -rf work
			clear
											
