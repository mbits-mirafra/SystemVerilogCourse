//Shift operators are used to shift data in a variable
module shift_code;

// Declare 4-bit logic variables 'a', 'c', and 'y'
logic [3:0] a, c, y;

// Declare 4-bit signed register 'b'
reg signed [3:0] b;

initial begin
   // Assign value 1011 (binary) to 'a'
   a = 4'b1011;
 
   // Assign value 1100 (binary) to 'b' (signed interpretation)
   b = 4'b1100;
 
   $display("\n \t the value of a is %0b", a);
   $display("\n \t the signed value of b is %0b", b);
 
   // Perform logical left shift (<<) on 'a' by 2 positions
   // Logical shifts insert zeros at the shifted-in positions.
   $display("\n \t the logical left shift (a << 2) output is %0b", a << 2);
 
   // Perform logical right shift (>>) on 'b' by 2 positions
   // Logical shifts insert zeros at the shifted-in positions.
   $display("\n \t the logical right shift (b >> 2) output is %0b", b >> 2);
 
   // Perform arithmetic left shift (<<<) on 'a' by 1 position
   // Arithmetic left shift is the same as a logical left shift.
   $display("\n \t the arithmetic left shift (a <<< 1) output is %0b", a <<< 1);
 
   // Perform arithmetic right shift (>>>) on signed 'b' by 3 positions
   // Arithmetic right shift maintains the sign bit (MSB) when shifting.
   $display("\n \t the arithmetic right shift (b >>> 3) output is %0b", b >>> 3);
 
end
endmodule 
