module AND_Gate(input A,
                input B,
                output Y,
                input clk
               );
  //Normal AndGate operation
  assign Y = A && B; 
endmodule
