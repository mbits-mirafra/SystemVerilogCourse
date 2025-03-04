all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv file_handles.sv

simulate:
	vsim file_handles -l file_handles.log -c -do "run -all;exit;"

clear:
	clear
