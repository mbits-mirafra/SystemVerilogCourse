all:
	make clear;make compile;make simulate

compile:
	vlib work
	vlog -sv fine_resume.sv

simulate:
	vsim fine_resume -l fine_resume.log -c -do "run -all;quit;"

clear:
	clear
	rm -rf fine_resume.log
