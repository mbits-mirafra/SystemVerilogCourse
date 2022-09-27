// creating top module 
// in this file design,testbench,interface modules are called

module top();

  // interfce module called
  and_intr inf();

  // design module called
  and_gate a1(inf.DUT_MP);

  // testbench module called
  tb a2(inf.TB_MP);

endmodule : top
