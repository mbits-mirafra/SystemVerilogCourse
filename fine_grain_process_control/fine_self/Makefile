all:
	rm -rf fine_self.log
	rm -rf work 
	clear
	vlib work
	vlog -sv fine_self.sv && vsim fine_self -l fine_self.log -c -do "run -all;quit;"
	# make clear;make compile;make simulate

compile:
	 vlib work
	 vlog -sv fine_self.sv

simulate:
	 vsim fine_self -l fine_self.log -c -do "run -all;quit;"

clear:
	 rm -rf fine_self.log
	 rm -rf work
	 clear
				 

