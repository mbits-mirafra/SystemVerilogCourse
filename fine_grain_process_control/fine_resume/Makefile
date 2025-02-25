all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv fine_resume.sv

simulate:
	vsim work.fine_resume -l fine_resume.log -c -do "run -all;exit;"

clear:
	clear
