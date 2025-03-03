all:
	make clear;
	make compile;
	make simulate;
							
compile:
	vlog -sv para_mailbox.sv

simulate:
	vsim tb -l para_mailbox.log -c -do "run -all;quit;"

clear:
	clear
