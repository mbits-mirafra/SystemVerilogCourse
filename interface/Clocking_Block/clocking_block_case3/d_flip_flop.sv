// module:d_flipflop   
module d_flipflop(dff.dut intf);  

//clocking block cd  
always @(intf.cd)  

//Non-Blocking assignment   
intf.cd.q <= intf.cd.d;  

endmodule : d_flipflop 
