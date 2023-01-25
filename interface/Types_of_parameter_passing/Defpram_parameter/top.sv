//Declaring top module
module top();

  //parameterised interface
  count_if intf();

  
  //-------------------------------------------------------
  // defparam is used for overridding the parameter value
  // by using the hierarchical name instance
  //-------------------------------------------------------

  //Declaration of defparam 
  defparam intf.N=1;

  //instantiation of design module
  up_counter u1(intf);

  //testbench for up_counter
  upcounter_testbench u2(intf);

endmodule:top
