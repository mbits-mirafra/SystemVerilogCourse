// This is similar to the case statement but reports a warning when 
// multiple expressions match an item or when no expression matches.

// In this unique case, more than one condition is true,
// which will generate a warning in the output.

module top;
bit [1:0] x;

initial begin
  x = 2'b00;                                // Assigning a binary value to 'x'

  unique case(x)                            // The 'unique' keyword ensures only one match occurs, otherwise a warning is generated.
  
    00 : $display("Value of x is =%0b" , x);  // Duplicate case for 00, which will trigger a warning.
    00 : $display("Value of x is =%0b" , x);  // This duplicate case causes an issue.
    01 : $display("Value of x is =%0b" , x);  // Case for x = 01
    10 : $display("Value of x is =%0b" , x);  // Case for x = 10
    11 : $display("Value of x is =%0b" , x);  // Case for x = 11
    
  endcase
end
endmodule

