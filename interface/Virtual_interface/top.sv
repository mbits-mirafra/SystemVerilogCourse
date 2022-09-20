//including the test.sv and interface.sv files
`include "test.sv"
`include "interface.sv"

//module:top
module top;
//creating  an instance of interface
adder intf();

// the instance of test  t1.
test t1(intf);

//fulladder DUT instance , connecting the interface signal to instance DUT
fulladder dut(.in_a(intf.in_a), .in_b(intf.in_b), .in_c(intf.in_c), .out_sum(intf.out_sum), .out_carry(intf.out_carry));
endmodule


