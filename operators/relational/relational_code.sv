//0 if the relation is false 
//1 if the relation is true 
module relational_code;
logic [2:0]a,b; //// Declare 3-bit logic variables 'a' and 'b'

initial begin
  a = 3'b111;   // Assign binary value 111 (decimal 7) to 'a'
  b = 3'b101;  // Assign binary value 101 (decimal 5) to 'b'
  // Display the values of 'a' and 'b'
  $display("\n \t Value of a is %0b",a);

  $display("\n \t Value of b is %0b",b);
  // Check if 'a' is less than 'b' (0 or 1)
  $display("\n \t the output of a < b is %0d", a < b);   
  // Check if 'a' is greater than 'b'
  $display("\n \t the output of a > b is %0d", a > b);  
  // Check if 'a' is less than or equal to 'b'
  $display("\n \t the output of a <= b is %0d", a <= b); 
  // Check if 'a' is greater than or equal to 'b'end
  $display("\n \t the output of a >= b is %0d", a >= b); 
end
endmodule
