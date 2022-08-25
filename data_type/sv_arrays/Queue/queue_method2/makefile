

compile:
		vlib work;
			vlog -sv queue.sv

simulate:
		vsim queue_data -l queue_data.log -c -do "run -all; exit;"

all:
	make compile && make simulate
