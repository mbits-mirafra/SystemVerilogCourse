module logic_code;
logic [0:7] a,b,c,x,y,z;

initial begin
a=4'd4;  // Assign decimal value 4 to 'a' (4-bit wide)
b=3'b111; // Assign binary value 3 to 'b' 
c=1'bx; // assign the 1 bit x values to the 'c'
$display("\n \t The value of a is %0d",a);
$display("\n \t The value of b is %0b",b);
$display("\n \t The value of c is %0b",c);

  // Logical OR (||) operation
  // Logical OR: If either 'a' or 'c' is nonzero, result is 1
  x = a ||c ;
  $display("\n \t The output of logic OR a||c is %0b",x);
  
  // Logical AND (&&) operation
  // Logical AND: If both 'b' and 'c' are nonzero, result is 1
  y = b && c;
  $display("\n \t The output of logic AND b && c is %0b",y);
  
  // Logical NOT (!) operation
  // Logical NOT: If 'b' is nonzero, result is 0; otherwise, result is 1
  z =!b;
  $display("\n \t The output of logic NOT !b is %0b",y);
  end
endmodule 

