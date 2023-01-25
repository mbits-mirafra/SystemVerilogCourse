all:
			rm -rf sro_pkg.log
			rm -rf work
			clear
			vlib work;
			vlog -sv sro_pkg.sv && vsim pkg_exm -l sro_pkg.log -c -do "run -all;quit;"

compile:
			vlib work;
			vlog -sv sro_pkg.sv

simulate:
			vsim pkg_exm -l sro_pkg.log -c -do "run -all;quit;"

clear:
			rm -rf sro_pkg.log
			rm -rf work
			clear
											
