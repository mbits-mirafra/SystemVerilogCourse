//Design code for up counter
module up_counter(clk,reset,counter);
  //declare signals using input output and reg
  input clk, reset;
  output [2:0] counter;
  reg [2:0] counter_up;
  //up counter
  always @(posedge clk or posedge reset) begin
    //if reset=0 count will be incremented
    if(reset)
      counter_up <= 3'd0;
    else
      counter_up <= counter_up + 3'd1;
  end
  //assigning counter value using assign
  assign counter = counter_up;
endmodule:up_counter
