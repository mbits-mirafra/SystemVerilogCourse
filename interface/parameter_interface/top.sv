
//`include "interface.sv"
//`include "test.sv"
//Declaring top module
module top();
//parameterised interface
count_if inf();

//design code of up_counter
up_counter u1(.clk(inf.clk), .reset(inf.reset), .counter(inf.counter));

//testbench for up_counter
upcounter_testbench u2(inf);

endmodule:top
