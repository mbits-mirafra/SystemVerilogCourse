//Declaring top module
module top();

  //parameterised interface
  //pass by constant value
  count_if#(2) intf();

  //design code of up_counter
  up_counter u1(intf);

   //testbench for up_counter
  upcounter_testbench u2(intf);

endmodule:top
