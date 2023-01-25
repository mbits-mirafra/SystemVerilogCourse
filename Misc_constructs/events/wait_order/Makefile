all:
		rm -rf work
		rm -rf wait_order.log
		vlib work
		clear
		vlog -sv wait_order.sv
		vsim work.events_ex wait_order.log -c -do "run -all;exit;"

compile:
		rm -rf work
		rm -rf wait_order.log
		clear
		vlib work
		vlog -sv wait_order.sv

simulate :
		vsim work.events_ex wait_order.log -c -do "run -all;exit;"

clear:
		rm -rf work
		rm -rf wait_order.log
		clear
		
