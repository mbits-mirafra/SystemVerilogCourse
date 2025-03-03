// In this unique case, no condition matches the given expression,
// which will generate a warning in the output.

module top;
bit [1:0] x;

initial begin
  x = 2'b10;                                // Assigning a value to 'x'

  unique case(x)                            // The 'unique' keyword ensures that exactly one match occurs, otherwise a warning is generated.
  
    00 : $display(" Value of x is = %0b", x);  // Case for x = 00
    01 : $display(" Value of x is = %0b", x);  // Case for x = 01
    // 10 : $display(" Value of x is = %0b", x);  // This case is commented out, causing no match.
    11 : $display(" Value of x is = %0b", x);  // Case for x = 11

  endcase  // Since x = 10 is not present, a warning will be generated.
end
endmodule

