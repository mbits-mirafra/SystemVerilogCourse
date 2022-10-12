all:
	rm -rf work
	clear
	vlib work;
	vlog -sv file_readmem.sv && vsim readmem -l file_readmem.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv file_readmem.sv

simulate:
	vsim readmem -l file_readmem.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear

