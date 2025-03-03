
module bitwise_code;
  logic[0:3]a,b,x,y,c;
  initial begin
  a=4'b1101;  // Define 4-bit variable 'a' with the value 1101 (binary)
  b=3'b101;   // Define 3-bit variable 'b' with the value 101 (binary)
  c=4'bx010;  // Define 4-bit variable 'c' with the value x010 
    $display("\n \t the value of a is %0b",a);

    // Perform bitwise NOT (~) on 'a' and store result in 'y'
    $display("\n \t the value of b is %0b",b);
    y=~a;
 
    $display("\n \t the bitwise NOT (~a) operator output is %0b",y);
 
    // Perform bitwise AND (&) on 'a' and 'b', store result in 'y'
    y=a&b;
    $display("\n \t the bitwise AND (a&b) operator output is %0b",y);
 
    // Perform bitwise OR (|) on 'a' and 'c', store result in 'y'
    y=a|c;
    $display("\n \t the bitwise OR (a|c) operator output is %0b",y);
 
    // Perform bitwise XOR (^) between 'a' and 'b', store in 'y'
    y=a^b;
    $display("\n \t the bitwise XOR (a^b) operator output is %0b",y);
 
    // Perform bitwise NAND (~&) between 'a' and 'b', store in 'y'
    y= ~(a & b);
    $display("\n \t the bitwise NAND ~(a&b) operator output is %0b", y);

    // Perform bitwise NOR (~|) between 'b' and 'a', store in 'y'
    y=  ~(b|a);
    $display("\n \t the bitwise NOR ~(b|a) operator output is %0b", y);
 
    // Perform bitwise XNOR (~^) between 'a' and 'b', store in 'y'
    y= ~(a^b);
    $display("\n \t the bitwise XNOR ~(a^b) operator output is %0b", y);
 
end
endmodule 
