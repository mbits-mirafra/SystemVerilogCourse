all:
			rm -rf sro_avoid.log
			rm -rf work
			clear
			vlib work;
			vlog -sv sro_avoid.sv && vsim pkg_exm -l sro_avoid.log -c -do "run -all;quit;"

compile:
			vlib work;
			vlog -sv sro_avoid.sv

simulate:
			vsim pkg_exm -l sro_avoid.log -c -do "run -all;quit;"

clear:
			rm -rf sro_avoid.log
			rm -rf work
			clear
											
