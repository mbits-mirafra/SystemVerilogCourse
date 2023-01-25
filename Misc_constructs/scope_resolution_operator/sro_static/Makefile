all:
			rm -rf sro_static.log
			rm -rf work
			clear
			vlib work;
			vlog -sv sro_static.sv && vsim static_exm -l sro_static.log -c -do "run -all;quit;"

compile:
			vlib work;
			vlog -sv sro_static.sv

simulate:
			vsim static_exm -l sro_static.log -c -do "run -all;quit;"

clear:
			rm -rf sro_static.log
			rm -rf work
			clear
											
