module andgate(
  input A,
  input B,
  output Y,
  input clk,
  input rst);

  assign Y = A&&B;

endmodule:andgate 
