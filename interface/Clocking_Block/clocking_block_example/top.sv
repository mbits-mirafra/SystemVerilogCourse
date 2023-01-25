//including the file test.sv and interface.sv  
`include "test.sv"      
`include "interface.sv"    
`include "d_flipflop.sv"
module top;
  bit clk=1;
  initial
    forever #5 clk = ~clk;

    //creating interface instance
    dff intf(clk);

    //d_flipflop instance
    d_flipflop t1(intf);  

    //test Instance
    test t2(intf);

  initial
    $monitor("DUT side [%0t] = d data is: %d and q data is: %d",$time,intf.cb.d, intf.cb.q);
endmodule : top
