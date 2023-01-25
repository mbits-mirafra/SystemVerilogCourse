//Design code for up counter
module up_counter(count_if intf);

  always @(posedge intf.clk or posedge intf.rst)
  begin
    //if reset=0 count will be incremented
    if(intf.rst)
      intf.counter_up <= 3'd0;
    else
      intf.counter_up <= intf.counter_up + 3'd1;
  end 

  //continuous assignment statement,Blocking statement
  assign intf.counter = intf.counter_up;

endmodule:up_counter
