compile:
	vlib work;
	vlog -sv event.sv

simulate :
	vsim work.event1 -l event_log.log -c -do "run -all;exit;"

all:
	make compile && make simulate
