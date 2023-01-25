// module:d_flipflop   
module d_flipflop(dff.dut intf);  

  //clocking block cd  
  always @(intf.cb)  

  //Non-Blocking assignment   
  intf.cb.q <= intf.cb.d;  

endmodule : d_flipflop   
