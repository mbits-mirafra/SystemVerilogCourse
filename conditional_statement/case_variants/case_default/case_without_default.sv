// case statement allows us to execute the code for the particular case expression

// Syntax:
//       case(condition)
//       condition_1: Statements ;
//       condition_2: Statements ;
//       ...........
//       condition_N: Statements;
//       endcase

module top;
bit [1:0] x;                                // Declare a 2-bit variable 'x'

initial begin                               // Initial block starts the execution
  x = 2'b01;                                // Assigning a binary value to 'x'

  // Here expression= "x" should match one of the items
  // Execution will exit the case block without doing anything 
  // if none of the case items match the given expression
  // and also default statement is not given.
  
  case(x)                                   // Case statement to check the value of 'x'
    00 : $display("Value of x = %0b",x);    // Case when x equals 00
    01 : $display("Value of x = %0b",x);    // Case when x equals 01
    10 : $display("Value of x = %0b",x);    // Case when x equals 10
    11 : $display("Value of x = %0b",x);    // Case when x equals 11
  endcase                                   // End of case statement

end 

endmodule 


