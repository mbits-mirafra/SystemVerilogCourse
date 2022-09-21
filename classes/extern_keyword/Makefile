all:
		rm -rf work
		rm -rf transcript
		clear
		vlib work
		vlog -sv extern.sv && vsim extern_example -c -do "run -all;quit;"

compile:
			vlib work
			vlog -sv extern.sv

simulate:
			vsim extern_example -l extern.log -c -do "run -all;quit;"

clear:	
			rm -rf work
			rm -rf transcript
			clear
			
