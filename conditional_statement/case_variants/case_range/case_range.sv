// Syntax:
//      case(condition) inside
//      condition_1: Statements ;
//      condition_2: Statements ;
//      ...........
//      condition_N: Statements;
//      endcase

module top;
int x;                                      // Declare an integer variable 'x'

initial begin                               // Initial block starts execution
  x = 6;                                    // Assigning value 6 to 'x'

  // Here expression= "x" should be used with the 'inside' statement
  // The 'inside' keyword is used to check whether 'x' falls within a specified range
  // If none of the case items match the given expression, 
  // the statement within the default item is executed

  case(x) inside                            // Case statement with 'inside' keyword
    [2:3]  : $display("Value of x = %0d", x); // Case when x is in range 2 to 3
    [4:5]  : $display("Value of x = %0d", x); // Case when x is in range 4 to 5
    [6:9]  : $display("Value of x = %0d", x); // Case when x is in range 6 to 9
    [8:9]  : $display("Value of x = %0d", x); // Case when x is in range 8 to 9
    default: $display("Value of x is not found"); // Default case if no match is found
  endcase                                   // End of case statement

end 

endmodule 


