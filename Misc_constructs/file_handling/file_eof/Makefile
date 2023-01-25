all:
	rm -rf work
	clear
	vlib work;
	vlog -sv file_eof.sv && vsim file_eof -l file_eof.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv file_eof.sv

simulate:
	vsim file_eof -l file_eof.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear
