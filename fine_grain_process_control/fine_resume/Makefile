all:
	rm -rf fine_resume.log
	rm -rf work
	clear
	vlib work
	vlog -sv fine_resume.sv && vsim fine_resume -l fine_resume.log -c -do "run -all;quit;"

compile:
	vlib work
	vlog -sv fine_resume.sv

simulate:
	vsim fine_resume -l fine_resume.log -c -do "run -all;quit;"

clear:
	rm -rf fine_resume.log
	rm -rf work 
	clear
