module andgate(input A,
               input B,
               output Y,
               input clk,
               input rst
              );

  //And operation
  assign Y = A && B;

endmodule:andgate 
