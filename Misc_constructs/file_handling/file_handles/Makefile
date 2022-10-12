all:
	rm -rf work
	clear
	vlib work;
	vlog -sv file_handles.sv && vsim file_handles -l file_handles.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv file_handles.sv

simulate:
	vsim file_handles -l file_handles.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear

