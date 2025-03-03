// case statement allows us to execute the code for the particular case expression

module top;
bit [1:0] x;                                // Declare a 2-bit wide variable 'x'

initial begin                               // Initial block starts the simulation
    
  x = 2'b01;                                // Initialize 'x' with the binary value 01

  // Here expression= "x" should match one of the items
  // If none of the case items match the given expression,
  // statement within the default item is executed 
  case(x)                                   // Start of the case statement, 'x' will be compared with each case value
    
    00 : $display("Value of x = %0b", x);   // Case when x equals 00 (binary value)
    
    01 : $display("Value of x = %0b",x);    // Case when x equals 01 (binary value)
    
    10 : $display("Value of x = %0b",x);    // Case when x equals 10 (binary value)
    
    11 : $display("Value of x = %0b" ,x);   // Case when x equals 11 (binary value)
    
    default : $display("Value of x is not found"); // Default case if 'x' doesn't match any of the above cases
  endcase                                   // End of the case statement

end                                         

endmodule

