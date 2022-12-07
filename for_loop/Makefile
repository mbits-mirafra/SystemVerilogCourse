questa_compile:
	vlib work;
	vlog -sv for_loop.sv

questa_simulate:
	vsim work.tb -l for_loop_outut.log -c -do "run -all; exit;"

questa_all:
	make questa_compile && make questa_simulate

vcs_compile:
	vcs -full64 -sverilog +v2k -debug_access+all -override_timescale=1ns/1ps for_loop.sv -l for_loop_output.log

vcs_simulate:
	./simv 

vcs_all:
	make vcs_compile && make vcs_simulate

# To enable waveform dump in synopsys/cadence, we need the below code
# in the top module
# initial begin
#     $dumpfile("verilog.vcd");
#     $dumpvars();
#   end
#
#   Also, make sure to include -debug_access+all in the compilation stage
 
## To open the waveform, use the below command
# verdi <name_of_vcd_file> &
# ex: verdi verilog.vcd &

clean:
	rm -rf *.conf *.rc work/ csrc/ simv simv.daidir *.key nWaveLog/ *.vcd *.fsdb vfastLog
