//Here we use the default statement inside the case statement.
//If none of the case conditions are true, then the default statement is executed.

module top;
bit [1:0] x;

initial begin
  x = 2'b01;                                // Assigning a binary value to 'x'

  // Here, no condition is true (since 01 is commented out), 
  // so the default statement will be executed.
  unique case(x)                            // Using unique case ensures only one matching condition is executed.
    00 : $display(" Value of x is = %0b", x);  // Case for x = 00
    // 01 : $display(" Value of x is = %0b", x);  // This case is commented out.
    10 : $display(" Value of x is = %0b", x);  // Case for x = 10
    11 : $display(" Value of x is = %0b", x);  // Case for x = 11
    default : $display(" Value of x is = %0b", x);  // Default case if no match found
  endcase
end
endmodule

