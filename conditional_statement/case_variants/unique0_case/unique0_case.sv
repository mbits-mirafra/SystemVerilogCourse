//In this unique0 case, more than one condition can be true
//If multiple conditions match, it will print a warning but not an error.

module top;
bit [1:0] x;

initial begin
  x = 2'b01;                                // Assigning binary value 01 to 'x'

  unique0 case(x)  // Using unique0 case statement
    00 : $display(" Value of x is = %0b", x);  // Case for x = 00
    01 : $display(" Value of x is = %0b", x);  // Case for x = 01
    10 : $display(" Value of x is = %0b", x);  // Case for x = 10
    11 : $display(" Value of x is = %0b", x);  // Case for x = 11
    01 : $display(" Value of x is = %0b", x);  // Duplicate case entry (Warning expected)
  endcase
end
endmodule



